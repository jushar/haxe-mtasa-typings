#!/usr/bin/env python2
import argparse
import xml.etree.ElementTree as ET
import subprocess
import os.path as path
from watchdog.observers import Observer
from watchdog.events import PatternMatchingEventHandler
import time

OUT_DIR = './_out'
HAXE_PATH = 'haxe'

def get_main_info(meta_root):
  server_main, client_main = None, None

  node = meta_root.find('server_main')
  if node is not None:
    server_main = {'src': '', 'class': 'Main', 'main_dir': ''}
    src = node.attrib['src']
    if src is not None:
      server_main['main_dir'] = path.dirname(src)
      server_main['src'] = path.relpath(src, server_main['main_dir'])

  node = meta_root.find('client_main')
  if node is not None:
    client_main = {'src': '', 'class': 'Main', 'main_dir': ''}
    src = node.attrib['src']
    if src is not None:
      client_main['main_dir'] = path.dirname(src)
      client_main['src'] = path.relpath(src, client_main['main_dir'])

  return server_main, client_main

def build_meta(meta_root):
  meta_root.append(ET.Element('script', {'src': 'server.lua', 'type': 'server'}))
  meta_root.append(ET.Element('script', {'src': 'client.lua', 'type': 'client'}))

  for node in meta_root.findall('server_main'):
    meta_root.remove(node)
  for node in meta_root.findall('client_main'):
    meta_root.remove(node)

  ET.ElementTree(meta_root).write(path.join(OUT_DIR, 'meta.xml'))

def build_resource():
  print('Building...')

  # Parse meta.xml
  tree = ET.parse('meta.xml')
  root = tree.getroot()

  # Get information about entry point
  server_main, client_main = get_main_info(root)
  server_out_path = path.join('..', OUT_DIR, 'server.lua')
  client_out_path = path.join('..', OUT_DIR, 'client.lua')

  # Invoke the compiler
  if server_main is not None:
    ret = subprocess.call([HAXE_PATH, '-main', server_main['class'], '-lua', server_out_path, server_main['src'], '-lib', 'mtasa-typings'], cwd=server_main['main_dir'])
  if client_main is not None:
    ret = subprocess.call([HAXE_PATH, '-main', client_main['class'], '-lua', client_out_path, client_main['src'], '-lib', 'mtasa-typings'], cwd=client_main['main_dir'])

  # Build new meta
  build_meta(root)

if __name__ == '__main__':
  # Parse args
  parser = argparse.ArgumentParser(description='haxe-mta build tools')
  sub_parsers = parser.add_subparsers(help='sub commands')
  build_parser = sub_parsers.add_parser('build', help='build resource')
  run_parser = sub_parsers.add_parser('run', help='wait and recompile on changes')
  build_parser.set_defaults(build_parser=True, run_parser=False)
  run_parser.set_defaults(run_parser=True, build_parser=False)

  args = parser.parse_args()

  # Handle commands
  if args.build_parser:
    # Build resource once
    build_resource()
  elif args.run_parser:
    # Build resource again on any change
    class FileSystemListener(PatternMatchingEventHandler):
      def __init__(self):
        super(FileSystemListener, self).__init__(ignore_patterns=['**/_out*'])
      def on_any_event(self, event):
        build_resource()

    event_handler = FileSystemListener()
    observer = Observer()
    observer.schedule(event_handler, '.', recursive=True)
    observer.start()

    try:
      while True:
        time.sleep(1)
    except KeyboardInterrupt:
      observer.stop()
    observer.join()
