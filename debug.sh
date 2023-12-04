#!/bin/bash

xmake f -m debug

xmake build engine 

ENGINE_EXECUTABLE=build/linux/x86_64/debug/engine

gdb --args $ENGINE_EXECUTABLE
