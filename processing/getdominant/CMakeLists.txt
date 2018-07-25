cmake_minimum_required (VERSION 3.0 FATAL_ERROR)

project(getdominant)

set(QT_MIN_VERSION "5.3.0")
find_package(ECM ${KF5_MIN_VERSION} REQUIRED NO_MODULE)

# Settings variables / QT & KF5 minimum versions
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(QT_MIN_VERSION "5.3.0")
set(KF5_MIN_VERSION "5.2.0")
find_package(ECM 1.0.0 REQUIRED NO_MODULE)

set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH} ${ECM_KDE_MODULE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

# CMake includes
include(KDEInstallDirs)
include(KDECMakeSettings)
include(KDECompilerSettings NO_POLICY_SCOPE)
include(ECMInstallIcons)
include(ECMSetupVersion)
include(FeatureSummary)

find_package(ImageMagick COMPONENTS Magick++)

# QT packages
find_package(
    Qt5 ${QT_MIN_VERSION} CONFIG REQUIRED COMPONENTS
        Core
        Sql
)


add_executable(getdominant getdominant.cpp)

# Link libraries (Qt5::Sql needed for <QSqlQuery>
target_link_libraries(
   getdominant
        Qt5::Core
)


include_directories(${ImageMagick_INCLUDE_DIRS})
target_link_libraries(getdominant ${ImageMagick_LIBRARIES})





