################################################################################
#
# test_mod
#
################################################################################

TEST_MOD_SITE_METHOD ?= local
TEST_MOD_SITE = $(TOPDIR)/../test_mod

#TEST_MOD_MODULE_MAKE_OPTS = CONFIG_TEST_MOD=m

$(eval $(kernel-module))
$(eval $(generic-package))
