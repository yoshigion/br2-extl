################################################################################
#
# uvc-gadget-lnrh
#
################################################################################

UVC_GADGET_LNRH_VERSION = master
UVC_GADGET_LNRH_SITE_METHOD ?= local
UVC_GADGET_LNRH_SITE        ?= $(TOPDIR)/../uvc-gadget-lnrh
UVC_GADGET_LNRH_LICENSE = GPL2
UVC_GADGET_LNRH_INSTALL_STAGING = NO
UVC_GADGET_LNRH_BUILD_TARGETS = uvc-gadget264
UVC_GADGET_LNRH_INSTALL_BINS  = $(UVC_GADGET_LNRH_BUILD_TARGETS)
UVC_GADGET_LNRH_INSTALL_SCRS  = usb20dev_uvc_func_264.sh

define UVC_GADGET_LNRH_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		-C $(@D) $(UVC_GADGET_LNRH_BUILD_TARGETS)
endef

define UVC_GADGET_LNRH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_LNRH_INSTALL_BINS) $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_LNRH_INSTALL_SCRS) $(TARGET_DIR)/root
endef

$(eval $(generic-package))
