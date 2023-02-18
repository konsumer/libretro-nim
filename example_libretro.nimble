version       = "0.0.1"
author        = "David Konsumer"
description   = "Example libretro core"
license       = "MIT"
srcDir        = "src"

requires "nim >= 1.6.10"

task core, "Build your libretro core":
  selfExec("c --app:lib --out:example_libretro.dylib -d:useSysAssert -d:useGcAssert -d:debug --gc:arc src/example_libretro.nim")

# TODO: is there a more cross-platform way to do this?
task example, "Build C example to compare":
  exec("gcc src/example.c -shared -fPIC -o example_libretro_c.dylib")

import os

task clean, "Clean built files":
  for file in listFiles("."):
    let ext = splitFile(file).ext
    if ext == ".dll" or ext == ".so" or ext == ".dylib":
      echo "Deleting ", file
      rmFile(file)