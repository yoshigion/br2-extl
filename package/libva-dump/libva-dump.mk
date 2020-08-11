################################################################################
#
# libva-dump
#
################################################################################

LIBVA_DUMP_VERSION = master
LIBVA_DUMP_SITE = $(call github,bootlin,libva-dump,$(LIBVA_DUMP_VERSION))
#LIBVA_DUMP_SITE_METHOD = local
#LIBVA_DUMP_SITE = ../../V4L2/libva-dump
LIBVA_DUMP_LICENSE = LGPL2.1 MIT
LIBVA_DUMP_LICENSE_FILES = COPYING
LIBVA_DUMP_INSTALL_STAGING = YES
LIBVA_DUMP_AUTORECONF = YES
LIBVA_DUMP_DEPENDENCIES = libva libdrm

$(eval $(autotools-package))
