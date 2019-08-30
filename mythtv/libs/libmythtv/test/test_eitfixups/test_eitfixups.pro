include ( ../../../../settings.pro )

QT += xml sql network testlib

TEMPLATE = app
TARGET = test_eitfixups
DEPENDPATH += . ../..
INCLUDEPATH += . ../.. ../../mpeg ../../../libmythui ../../../libmyth ../../../libmythbase
INCLUDEPATH += ../../../libmythservicecontracts

LIBS += ../../$(OBJECTS_DIR)/eitfixup.o
LIBS += ../../$(OBJECTS_DIR)/dishdescriptors.o
LIBS += ../../$(OBJECTS_DIR)/atsc_huffman.o
LIBS += ../../$(OBJECTS_DIR)/dvbdescriptors.o
LIBS += ../../$(OBJECTS_DIR)/iso6937tables.o
LIBS += ../../$(OBJECTS_DIR)/freesat_huffman.o

LIBS += -L../../../libmythbase -lmythbase-$$LIBVERSION
LIBS += -L../../../libmythui -lmythui-$$LIBVERSION
LIBS += -L../../../libmythupnp -lmythupnp-$$LIBVERSION
LIBS += -L../../../libmythservicecontracts -lmythservicecontracts-$$LIBVERSION
LIBS += -L../../../libmyth -lmyth-$$LIBVERSION
LIBS += -L../.. -lmythtv-$$LIBVERSION
LIBS += -L../../../../external/FFmpeg/libswresample -lffreswresample
LIBS += -L../../../../external/FFmpeg/libavutil -lffreavutil
LIBS += -L../../../../external/FFmpeg/libavcodec -lffreavcodec
LIBS += -L../../../../external/FFmpeg/libswscale -lffreswscale
LIBS += -L../../../../external/FFmpeg/libavformat -lffreavformat
LIBS += -L../../../../external/FFmpeg/libavfilter -lffreavfilter
LIBS += -L../../../../external/FFmpeg/libpostproc -lffrepostproc
using_mheg:LIBS += -L../../../libmythfreemheg -lmythfreemheg-$$LIBVERSION

contains(QMAKE_CXX, "g++") {
  QMAKE_CXXFLAGS += -O0 -fprofile-arcs -ftest-coverage
  QMAKE_LFLAGS += -fprofile-arcs
}

QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libswresample
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libavutil
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libswscale
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libavformat
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libavfilter
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libavcodec
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../../external/FFmpeg/libpostproc
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../libmythbase
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../libmyth
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../libmythui
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../libmythupnp
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../libmythservicecontracts
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../../../libmythfreemheg
QMAKE_LFLAGS += -Wl,$$_RPATH_$(PWD)/../..

# Input
HEADERS += test_eitfixups.h
SOURCES += test_eitfixups.cpp

QMAKE_CLEAN += $(TARGET) $(TARGETA) $(TARGETD) $(TARGET0) $(TARGET1) $(TARGET2)
QMAKE_CLEAN += ; ( cd $(OBJECTS_DIR) && rm -f *.gcov *.gcda *.gcno )

LIBS += $$EXTRA_LIBS $$LATE_LIBS

# Fix runtime linking on Ubuntu 17.10.
linux:QMAKE_LFLAGS += -Wl,--disable-new-dtags
