ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
#CFLAGS = -fobjc-arc
#THEOS_PACKAGE_DIR_NAME = debs
CFLAGS =-w

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BBM++byKlash
BBM++byKlash_FILES = Tweak.xm
BBM++byKlash_FRAMEWORKS = UIKit
BBM++byKlash_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk


SUBPROJECTS += BBM++byKlash
include $(THEOS_MAKE_PATH)/aggregate.mk
