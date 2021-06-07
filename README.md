# HaxeUI Example

This is a working example of some HaxeUI code taken from their tutorial.

Tested as a native build on windows using the OpenFL backend.

## Install

1. `haxelib install haxeui-core`
2. `haxelib install haxeui-openfl`
3. `haxelib install openfl`
4. `haxelib run openfl setup`

## Building

```
haxelib run haxeui-core build openfl --windows
```

Note: Running `haxelib run haxeui-core help build` will show you options for different backends, e.g. not providing `--windows` to the build will default to html (equivalent to `--html`).

## Running

```
haxelib run haxeui-core run openfl --windows
```

Note: You can also run the binary directly, located in build/openfl/windows/bin/Main.exe


## Scaffolding New Projects

```
haxelib run haxeui-core create <backend>
```

Note: Running `haxelib run haxeui-core help create` will list available backends.
