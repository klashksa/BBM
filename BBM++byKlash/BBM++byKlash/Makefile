ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk
CFLAGS =-w


BUNDLE_NAME = BBM++byKlash
BBM++byKlash_FILES = BBM++byKlash.mm PFHeaderCell.mm
BBM++byKlash_INSTALL_PATH = /Library/PreferenceBundles
BBM++byKlash_FRAMEWORKS = UIKit
BBM++byKlash_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BBM++byKlash.plist$(ECHO_END)
