QT -= core gui
CONFIG += static create_prl

TARGET = indexdb
TEMPLATE = lib

SOURCES += \
    Buffer.cc \
    FileIo.cc \
    FileIo64BitSupport.cc \
    IndexArchiveBuilder.cc \
    IndexArchiveReader.cc \
    IndexDb.cc \
    StringTable.cc

HEADERS += \
    Buffer.h \
    Endian.h \
    FileIo.h \
    FileIo64BitSupport.h \
    IndexArchiveBuilder.h \
    IndexArchiveReader.h \
    IndexDb.h \
    StringTable.h \
    Util.h \
    WriterSha256Context.h

DEPENDENCY_STATIC_LIBS += \
    ../third_party/libMurmurHash3 \
    ../third_party/libsha2 \
    ../third_party/libsnappy
include(../dependency_static_libs.pri)

QMAKE_CXXFLAGS += -std=c++0x
QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter
