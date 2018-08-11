REM protoc --cpp_out=. CATS_messages.proto
@title Proto-File Compiler
@echo Proto-Compiler-Version:
@protoc250.exe --version


@for %%i in ("%cd%\*.proto") do protoc250.exe -I="%cd%" -I="%MT_PROTOBUF_DIR%\include" --cpp_out="%cd%\..\include" "%%i"
@REM @for %%i in ("%cd%\google\protobuf\*.proto") do protoc.exe -I="%cd%" --cpp_out="%cd%\..\include" "%%i"
@pause