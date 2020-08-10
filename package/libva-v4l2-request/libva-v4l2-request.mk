################################################################################
#
# libva-v4l2-request
#
################################################################################

LIBVA_V4L2_REQUEST_VERSION = master
#LIBVA_V4L2_REQUEST_SITE = $(call github,bootlin,libva-v4l2-request,$(LIBVA_V4L2_REQUEST_VERSION))
LIBVA_V4L2_REQUEST_SITE_METHOD = local
LIBVA_V4L2_REQUEST_SITE = ../../V4L2/libva-v4l2-request
LIBVA_V4L2_REQUEST_LICENSE = LGPL2.1 MIT
LIBVA_V4L2_REQUEST_LICENSE_FILES = COPYING
LIBVA_V4L2_REQUEST_INSTALL_STAGING = YES
LIBVA_V4L2_REQUEST_AUTORECONF = YES
LIBVA_V4L2_REQUEST_DEPENDENCIES = libva libdrm linux-headers

$(eval $(autotools-package))
#$(eval $(meson-package))
