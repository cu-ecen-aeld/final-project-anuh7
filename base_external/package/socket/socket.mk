##############################################################
#
# socket
#
##############################################################


SOCKET_VERSION = 'c2a8362e25d126c32575ea0b4dd0a53ff4d501a2'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
SOCKET_SITE = 'git@github.com:anuh7/final-project-assignment-anuh.git'
SOCKET_SITE_METHOD = git
SOCKET_GIT_SUBMODULES = YES

define SOCKET_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SOCKET_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/server/server $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/client/client $(TARGET_DIR)/usr/bin/
endef


$(eval $(generic-package))
