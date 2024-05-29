cmake_minimum_required(VERSION 3.16)

set(TARGET mastergoal_qt)
project(${TARGET} VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

include_directories(src)

qt_add_resources(RES_RCC "res/res.qrc")

qt_add_executable(${TARGET}
    main.cpp
    ${RES_RCC}
)

qt_add_qml_module(${TARGET}
    URI MastergoalQt
    VERSION 1.0
    QML_FILES
        Main.qml
        src/app/App.qml
        src/app/Logic.qml
        src/home/Home.qml
        src/sologame/SoloGame.qml
        src/splashscreen/SplashScreen.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(${TARGET} PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmastergoal_qt
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(${TARGET}
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS ${TARGET}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
