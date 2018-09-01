#! /bin/bash
# protoc --cpp_out=. CATS_messages.proto
#title Proto-File Compiler
echo Proto-Compiler-Version:
protoc --version


for i in "$PWD/"*.proto; do protoc -I="$PWD" -I="$MT_PROTOBUF_DIR/include" --cpp_out="$PWD/../include" "$i"; done
# @for %%i in ("%cd%/google/protobuf/*.proto") do protoc.exe -I="%cd%" --cpp_out="%cd%/../include" "$i"
echo -n "Done "
read
