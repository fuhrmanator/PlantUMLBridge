# Purpose
I am a class that can convert PlantUML syntax to the url of a diagram which can be loaded of the [plantuml site](http://plantuml.com/).


I have two service methods on the class side of me.

- **urlFromSource:**  which returns a url to a diagram corresponding to the source.
- **loadUML**  which returns the image of the diagram.


My prime purpose is to support inlined PlantUML in pillar. See the example in the class side.

I am a rewrite of the plantuml encoding scheme developed as part of:
https://github.com/fuhrmanator/PlantUMLPharoGizmo.

### Metacello load:

```smalltalk
Metacello new   baseline: 'PlantUMLBridge';   repository: 'github://kasperosterbye/PlantUMLBridge';   load.
```
