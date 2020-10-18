################################################################################
#
# uvc-gadget-clbh
#
################################################################################

UVC_GADGET_CLBH_VERSION = master
UVC_GADGET_CLBH_SITE_METHOD ?= local
UVC_GADGET_CLBH_SITE        ?= $(TOPDIR)/../uvc-gadget-clbh
#UVC_GADGET_CLBH_SITE = $(call github,yoshigion,uvc-gadget-clbh,$(UVC_GADGET_CLBH_VERSION))
#UVC_GADGET_CLBH_SITE = $(call github,climberhunt,uvc-gadget,$(UVC_GADGET_CLBH_VERSION))
UVC_GADGET_CLBH_LICENSE = GPL2
UVC_GADGET_CLBH_INSTALL_STAGING = NO
UVC_GADGET_CLBH_BUILD_TARGETS = uvc-gadget
UVC_GADGET_CLBH_INSTALL_BINS  = $(UVC_GADGET_CLBH_BUILD_TARGETS)
UVC_GADGET_CLBH_INSTALL_SCR1  = multi-gadget.sh
UVC_GADGET_CLBH_INSTALL_SCR2  = piwebcam
UVC_GADGET_CLBH_INSTALL_SCR3  = piwebcam.service
UVC_GADGET_CLBH_INSTALL_SCR4  = usb20dev_uvc_func.sh

define UVC_GADGET_CLBH_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		-C $(@D) $(UVC_GADGET_CLBH_BUILD_TARGETS)
endef

define UVC_GADGET_CLBH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_CLBH_INSTALL_BINS) $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_CLBH_INSTALL_SCR1) $(TARGET_DIR)/root
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_CLBH_INSTALL_SCR2) $(TARGET_DIR)/root
	$(INSTALL) -D -m 0644 $(@D)/$(UVC_GADGET_CLBH_INSTALL_SCR3) $(TARGET_DIR)/root
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_CLBH_INSTALL_SCR4) $(TARGET_DIR)/root
endef

$(eval $(generic-package))
