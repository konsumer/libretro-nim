This is an example core, written in nim. This is a translation from [a basic software-rendering example](https://github.com/libretro/libretro-samples/tree/master/video/software/rendering) but you should be able to roughly translate any of the C examples into nim, with this example, as a guide.

## Usage

Put your core-code in `src/example_libretro.nim` and you can run these:

```
# install tools/libs
nimble install -d

# build the core
nimble core
```

You can run your core like this:

```
# mac
/Applications/RetroArch.app/Contents/MacOS/RetroArch -L example_libretro.dylib

# linux
retroarch -L example_libretro.so

# windows
retroarch -L example_libretro.dll
```

## C example

I included the original example in `src/example.c` to compare. If you don't need the C example, you can delete the file and remove the `example` task from `example_libretro.nimble`. It's basically just to show how to translate a C core into nim.

```
# build the C example core
nimble example

# mac
/Applications/RetroArch.app/Contents/MacOS/RetroArch -L example_libretro_c.dylib

# linux
retroarch -L example_libretro_c.so

# windows
retroarch -L example_libretro_c.dll
```
