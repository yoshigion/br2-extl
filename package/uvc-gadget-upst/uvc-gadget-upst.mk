################################################################################
#
# uvc-gadget-upst
#
################################################################################

UVC_GADGET_UPST_VERSION = master
UVC_GADGET_UPST_SITE_METHOD ?= local
UVC_GADGET_UPST_SITE        ?= $(TOPDIR)/../uvc-gadget-upst
#UVC_GADGET_UPST_SITE = $(call github,yoshigion,uvc-gadget,$(UVC_GADGET_UPST_VERSION))
#UVC_GADGET_UPST_SITE = "git://git.ideasonboard.org/uvc-gadget.git"
UVC_GADGET_UPST_LICENSE = GPL2, LGPL2
UVC_GADGET_UPST_INSTALL_STAGING = NO
UVC_GADGET_UPST_BUILD_TARGETS = uvc-gadget
UVC_GADGET_UPST_BUILD_LIBS    = libuvcgadget.so
UVC_GADGET_UPST_INSTALL_BINS  = $(UVC_GADGET_UPST_BUILD_TARGETS)
UVC_GADGET_UPST_INSTALL_LIBS  = $(UVC_GADGET_UPST_BUILD_LIBS)
UVC_GADGET_LNRU_INSTALL_SCR1  = uvc-gadget.sh
UVC_GADGET_UPST_CONF_ENV = 
#UVC_GADGET_UPST_CONF_ENV += CMAKE_SYSTEM_NAME=Linux

#define UVC_GADGET_UPST_BUILD_CMDS
#	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
#		-C $(@D) $(UVC_GADGET_UPST_BUILD_TARGETS)
#endef

define UVC_GADGET_UPST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_UPST_INSTALL_BINS)     $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/lib/$(UVC_GADGET_UPST_INSTALL_LIBS) $(TARGET_DIR)/usr/lib
	$(INSTALL) -D -m 0755 $(@D)/scripts/$(UVC_GADGET_LNRU_INSTALL_SCR1) $(TARGET_DIR)/root
endef

$(eval $(cmake-package))
