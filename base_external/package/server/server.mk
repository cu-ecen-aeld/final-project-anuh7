##############################################################
#
# SOCKET-SERVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contentsT
SERVER_VERSION = 'efbc6118ae9c6b7b995abad5c3c0e035f8b5da59'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:T
SERVER_SITE = 'git@github.com:anuh7/final-project-assignment-anuh.git'
SERVER_SITE_METHOD = git
SERVER_GIT_SUBMODULES = YES

define SERVER_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define SERVER_INSTALL_TARGET_CMDS
        
        $(INSTALL) -m 0755 $(@D)/server/server $(TARGET_DIR)/usr/bin
        
endef

$(eval $(generic-package))
