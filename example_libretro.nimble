version       = "0.0.1"
author        = "David Konsumer"
description   = "Example libretro core"
license       = "MIT"
srcDir        = "src"

requires "nim >= 1.6.10"

task core, "Build your libretro core":
  selfExec("c --threads:on --app:lib --out:example_libretro.dylib -d:release src/example_libretro.nim")

# TODO: these probly do not work on windows

task clean, "Clean built files":
  exec("rm -f *.dll *.so *.dylib")

task example, "Build C example to compare":
  exec("gcc src/example.c -shared -fPIC -o example_libretro_c.dylib")
