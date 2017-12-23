# For all platforms goes that you need the SDL-2 libraries

read the [original repository](https://github.com/veandco/go-sdl2) for more infomation about that.


# Linux

Building should then go as normal for Go, however as far as I know the libaries will after that remain a dependency for the Bubble engine.

# Mac

Compiling the .go files should not offer the true trouble. However after the binary file has been created it needs to be converted into an actual application bundle.
[This readme file from veandco themselves](https://github.com/veandco/go-sdl2-example/blob/master/README.md) should fully explain how that works.

# Windows

Building the .exe file is not the great trouble, me thinks.
When it comes to distribution however, you must ensure that the required .dll files are bundled with the engine.
[Go here](http://libsdl.org/download-2.0.php) for that.




# License notice

A few notes:
- The MPL requires the Bubble engine itself to remain open-source, and to include the license file with it.
- The Go-SDL2 also has a [license](https://github.com/veandco/go-sdl2/blob/master/LICENSE) that is required to be distributed with the software created with SDL, and by using Bubble you indirectly use Go-SDL2
- Neither of the licenses will affect the Lua scripts. Not even the GNU GPL would do that. The Lua files count as "the data" and are therefore not affected by any binary file. Please keep in mind though that if you use third party .lua files (especially if these are GPL licensed) it will be a different story.
