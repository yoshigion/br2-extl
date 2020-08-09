################################################################################
#
# libva-v4l2-request
#
################################################################################

LIBVA_V4L2_REQUEST_VERSION = master
LIBVA_V4L2_REQUEST_SITE = $(call github,bootlin,libva-v4l2-request,$(LIBVA_V4L2_REQUEST_VERSION))
LIBVA_V4L2_REQUEST_LICENSE = LGPL2.1 MIT
LIBVA_V4L2_REQUEST_LICENSE_FILES = COPYING
LIBVA_V4L2_REQUEST_INSTALL_STAGING = YES
LIBVA_V4L2_REQUEST_DEPENDENCIES = libva libdrm linux-headers

$(eval $(meson-package))
