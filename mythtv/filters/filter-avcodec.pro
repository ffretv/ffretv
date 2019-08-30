# A few filters use routines from libavcodec. Include this in their .pro file

LIBS += -L../../external/FFmpeg/libswresample -lffreswresample
LIBS += -L../../external/FFmpeg/libavutil  -lffreavutil
LIBS += -L../../external/FFmpeg/libavcodec -lffreavcodec
LIBS += -L../../external/FFmpeg/libavformat  -lffreavformat

# Rebuild (link) this filter if the lib changes
POST_TARGETDEPS += ../../external/FFmpeg/libswresample/$$avLibName(swresample)
POST_TARGETDEPS += ../../external/FFmpeg/libavutil/$$avLibName(avutil)
POST_TARGETDEPS += ../../external/FFmpeg/libavcodec/$$avLibName(avcodec)
POST_TARGETDEPS += ../../external/FFmpeg/libavformat/$$avLibName(avformat)
