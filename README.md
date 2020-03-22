# haxeExample
A minimal example of a working Haxe project

Shows how to set up the project, define and use an interface, class, and test.

Some things I struggled with getting started on Windows:

After installing haxe and attempting to run "haxelib install hxcs", I got an error that neko.dll could not be found.  I needed to manually add C:\HaxeToolkit\neko to my PATH, and then restart my CLI for that to take effect.

After installing the utest library ("haxelib install utest"), you also need to add the lib to your build.hxml

Public classes / interfaces / etc should be in a .hx file of the same name.
