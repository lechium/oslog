TOOL_PATH = /usr/bin

ifneq (,$(findstring s, $(MAKEFLAGS)))
	TOOL_PATH = /fs/jb/usr/bin
	#echo "i was passed to MAKEFLAGS"
endif

target = appletv
ARCHS = arm64
export DEBUG=0
DEBUG=0
include $(THEOS)/makefiles/common.mk

TOOL_NAME = oslog
oslog_FILES = main.mm
oslog_CFLAGS = -fobjc-arc -Iheaders
oslog_CODESIGN_FLAGS = -Sents.xml
oslog_INSTALL_PATH = $(TOOL_PATH)

include $(THEOS_MAKE_PATH)/tool.mk
