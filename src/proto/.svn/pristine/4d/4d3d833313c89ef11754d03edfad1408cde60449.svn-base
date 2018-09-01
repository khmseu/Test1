REM protoc --cpp_out=. CATS_messages.proto
@title Proto-File Compiler
@echo Proto-Compiler-Version:
@protoc250.exe --version

REM @for %%i in ("%cd%\*.proto") do protoc.exe -I="%cd%" -I="%MT_PROTOBUF_DIR%\include" --java_out="C:\Users\simon\workspace\CATS3\src" "%%i"
@REM @for %%i in ("%cd%\google\protobuf\*.proto") do protoc.exe -I="%cd%" --cpp_out="%cd%\..\include" "%%i"
REM @pause

set p==protoc250.exe -I="%cd%" -I="%MT_PROTOBUF_DIR%\include" --java_out="C:\Users\simon\workspace\CATS3\src"

%p% "%cd%\CATS_Helper.proto"
%p% "%cd%\CATS_Connect.proto"
%p% "%cd%\CATS_Licence.proto"
%p% "%cd%\CATS_Login.proto"
%p% "%cd%\CATS_Monitor.proto"
%p% "%cd%\CATS_CallAction.proto"
%p% "%cd%\CATS_Journal.proto"
%p% "%cd%\CATS_ExtStatus.proto"
%p% "%cd%\CATS_Specials.proto"
%p% "%cd%\CATS_LiveMessage.proto"
%p% "%cd%\CATS_CallBack.proto"
%p% "%cd%\CATS_AddressResolution.proto"
%p% "%cd%\CATS_MasterClient.proto"

pause