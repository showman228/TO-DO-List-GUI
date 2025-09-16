cmake_minimum_required(VERSION 3.16)

project(TO_DO_ListGUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appTO_DO_ListGUI
    main.cpp
)

qt_add_qml_module(appTO_DO_ListGUI
    URI TO_DO_ListGUI
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES
        SOURCES
        SOURCES task.h task.cpp
        SOURCES taskmanager.h taskmanager.cpp
        SOURCES
        RESOURCES
        RESOURCES images/pudge-dota.gif
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appTO_DO_ListGUI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appTO_DO_ListGUI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appTO_DO_ListGUI
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appTO_DO_ListGUI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
