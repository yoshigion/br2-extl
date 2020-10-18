################################################################################
#
# uniphier_vpe
#
################################################################################

UNIPHIER_VPE_SITE_METHOD ?= local
UNIPHIER_VPE_SITE = $(TOPDIR)/../PHark-ProX/modules/uniphier_vpe

UNIPHIER_VPE_MODULE_MAKE_OPTS = CONFIG_VPE_UNIPHIER=m

$(eval $(kernel-module))
$(eval $(generic-package))
