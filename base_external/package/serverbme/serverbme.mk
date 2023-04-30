##############################################################
#
# serverbme
#
##############################################################


SERVERBME_VERSION = '952732aa870deabc7932170f88c8e9ff30533fbb'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SERVERBME_SITE = 'git@github.com:anuh7/final-project-assignment-anuh.git'
SERVERBME_SITE_METHOD = git
SERVERBME_GIT_SUBMODULES = YES

define SERVERBME_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/serverd all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SERVERBME_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/serverd/serverd $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
