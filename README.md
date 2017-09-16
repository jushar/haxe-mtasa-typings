# Haxe Typings for MTA:SA
## Resource Skeleton
See https://github.com/Jusonex/haxe-mtasa-typings/tree/master/example/README.md

## Contributing
### Enabling haxelib development mode
```
haxelib dev mtasa-typings .
```
### Style Guide
* Use Javadoc-style documentation and keep documentation short (i.e. it's not necessary to include the types in the documentation)
* Indent documentation comments with 1 tab (equals 2 spaces)
* Don't append dots (`.`) if it's only a single/half sentence
* Add one space before the parameter name
* Add one space before braces and place braces in the same line
* Don't add OOP properties (Haxe doesn't have the property concept, so it's more consistent to don't use it)
* Use double quotes

Example:
```haxe
/**
  Creates an object in the GTA world
  @param model     Object model ID
  @param position  XYZ position on the map
  @param rotation  Rotation in Euler angles (in degrees)
  @param isLowLod  Indicating whether or not the object is a low LOD. A low LOD object has no collision and a longer draw distance.
  @see https://wiki.multitheftauto.com/wiki/CreateObject
**/
public static function create(model: UInt, position: Vector3, ?rotation: Vector3, ?isLowLOD: Bool): Object;
```
