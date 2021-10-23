# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

if ( WIN32 OR WIN64 OR MINGW OR MING32 OR MINGW64 OR CYGWIN OR CYGWIN64 OR MSYS OR CMAKE_SYSTEM_NAME EQUAL "Windows" )
    # Windows
    set( PLATFORM "windows" )
    set( PROJECT_WINDOWS ON )
elseif ( ANDROID OR $CMAKE_SYSTEM_NAME EQUAL "Android" )
    # Android
    set( PLATFORM "android" )
    set( PROJECT_ANDROID ON )
elseif ( APPLE OR CMAKE_SYSTEM_NAME EQUAL "Darwin" )
    # Mac
    set( PLATFORM "mac" )
    set( PROJECT_MAC ON )
elseif ( LINUX OR UNIX OR CMAKE_SYSTEM_NAME EQUAL "Linux" OR CMAKE_SYSTEM_NAME EQUAL "FreeBSD" OR CMAKE_SYSTEM_NAME EQUAL "CrayLinuxEnvironment" )
    # Linux
    set( PLATFORM "linux" )
    set( PROJECT_LINUX ON )
elseif ( IOS )
    set( PLATFORM "ios" )
    set( PROJECT_IOS ON )
else ( WIN32 OR WIN64 OR MINGW OR MING32 OR MINGW64 OR CYGWIN OR CYGWIN64 OR MSYS OR CMAKE_SYSTEM_NAME EQUAL "Windows" ) # WINDOWS
    message( FATAL_ERROR "${PROJECT_NAME} - failed to detect target-platform, configuration required" )
endif ( WIN32 OR WIN64 OR MINGW OR MING32 OR MINGW64 OR CYGWIN OR CYGWIN64 OR MSYS OR CMAKE_SYSTEM_NAME EQUAL "Windows" ) # WINDOWS

message ( STATUS "${PROJECT_NAME} - platform is ${PLATFORM}" )

# = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

