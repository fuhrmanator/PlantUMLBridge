# Purpose
I am a class that can convert PlantUML syntax to the url of a diagram which can be loaded from the [plantuml site](http://plantuml.com/).


I have two kinds of service methods on the class side of me.

- `pngFromSource:` and `svgFromSource:`  which returns a url to a diagram corresponding to the source.
- `imageFromUML:` and `webbrowseUML:`  which returns the in-image png or opens the svg in a webbrowser.

I am a rewrite of the plantuml encoding scheme developed as part of:
https://github.com/fuhrmanator/PlantUMLPharoGizmo.

### Metacello load:

```smalltalk
Metacello new
   baseline: 'PlantUMLBridge';
   repository: 'github://fuhrmanator/PlantUMLBridge';
   load.
```
