################################################################################
#
# v4l2-request-test
#
################################################################################

V4L2_REQUEST_TEST_VERSION = master
V4L2_REQUEST_TEST_SITE = $(call github,bootlin,v4l2-request-test,$(V4L2_REQUEST_TEST_VERSION))
#V4L2_REQUEST_TEST_SITE_METHOD = local
#V4L2_REQUEST_TEST_SITE = ../../V4L2/v4l2-request-test
V4L2_REQUEST_TEST_LICENSE = GPL2.1 MIT
V4L2_REQUEST_TEST_LICENSE_FILES = COPYING
V4L2_REQUEST_TEST_INSTALL_STAGING = NO
V4L2_REQUEST_TEST_DEPENDENCIES = libva libdrm libva-v4l2-request xserver_xorg-server
V4L2_REQUEST_TEST_EXTRA_CFLAGS =
V4L2_REQUEST_TEST_EXTRA_CFLAGS += -Wunused-variable -Iinclude
V4L2_REQUEST_TEST_EXTRA_CFLAGS += `$(PKG_CONFIG_HOST_BINARY) --cflags libdrm`
V4L2_REQUEST_TEST_EXTRA_CFLAGS += -I$(STAGING_DIR)/usr/include
V4L2_REQUEST_TEST_EXTRA_LDFLAGS =
V4L2_REQUEST_TEST_EXTRA_LDFLAGS += `$(PKG_CONFIG_HOST_BINARY) --libs libdrm`
V4L2_REQUEST_TEST_MAKE_ENV = \
			$(TARGET_CONFIGURE_OPTS) \
			CFLAGS="$(TARGET_CFLAGS) $(V4L2_REQUEST_TEST_EXTRA_CFLAGS)" \
			LDFLAGS="$(TARGET_LDFLAGS) $(V4L2_REQUEST_TEST_EXTRA_LDFLAGS)"

define V4L2_REQUEST_TEST_BUILD_CMDS
	$(V4L2_REQUEST_TEST_MAKE_ENV) $(MAKE) -C $(@D) all
endef

define V4L2_REQUEST_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/v4l2-request-test $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
