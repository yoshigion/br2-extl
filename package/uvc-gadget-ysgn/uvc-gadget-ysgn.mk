################################################################################
#
# uvc-gadget
#
################################################################################

UVC_GADGET_YSGN_VERSION = master
UVC_GADGET_YSGN_SITE_METHOD ?= local
UVC_GADGET_YSGN_SITE        ?= $(TOPDIR)/../uvc-gadget-ysgn
#UVC_GADGET_YSGN_SITE = $(call github,yoshigion,uvc-gadget-ysgn,$(UVC_GADGET_YSGN_VERSION))
UVC_GADGET_YSGN_LICENSE = GPL2
UVC_GADGET_YSGN_INSTALL_STAGING = NO
UVC_GADGET_YSGN_BUILD_TARGETS = uvc-gadget
UVC_GADGET_YSGN_INSTALL_BINS  = $(UVC_GADGET_YSGN_BUILD_TARGETS)

define UVC_GADGET_YSGN_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		-C $(@D) $(UVC_GADGET_YSGN_BUILD_TARGETS)
endef

define UVC_GADGET_YSGN_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/$(UVC_GADGET_YSGN_INSTALL_BINS) $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
