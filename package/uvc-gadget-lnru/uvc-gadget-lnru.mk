################################################################################
#
# uvc-gadget-lnru
#
################################################################################

UVC_GADGET_LNRU_VERSION = master
UVC_GADGET_LNRU_SITE_METHOD ?= local
UVC_GADGET_LNRU_SITE        ?= $(TOPDIR)/../uvc-gadget-lnru
UVC_GADGET_LNRU_LICENSE = GPL2
UVC_GADGET_LNRU_INSTALL_STAGING = NO
UVC_GADGET_LNRU_BUILD_TARGETS = uvc-gadget
UVC_GADGET_LNRU_INSTALL_BINS  = $(UVC_GADGET_LNRU_BUILD_TARGETS)
UVC_GADGET_LNRU_INSTALL_SCRS  = usb20dev_uvc_func.sh

define UVC_GADGET_LNRU_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		-C $(@D) $(UVC_GADGET_LNRU_BUILD_TARGETS)
endef

define UVC_GADGET_LNRU_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_LNRU_INSTALL_BINS) $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_LNRU_INSTALL_SCRS) $(TARGET_DIR)/root
endef

$(eval $(generic-package))
