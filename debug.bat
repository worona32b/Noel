@echo off

xmake f -m debug

xmake build engine 

set ENGINE_EXECUTABLE=build\windows\x86_64\debug\engine.exe

gdb --args %ENGINE_EXECUTABLE%
