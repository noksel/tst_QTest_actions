QT += testlib
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase c++11
CONFIG -= app_bundle

TEMPLATE = app

SOURCES +=  ./src/tst_tst.cpp

build_pass:CONFIG(debug, debug|release) {
    unix: TARGET = $$join(TARGET,,,_debug)
    else: TARGET = $$join(TARGET,,,d)
}
