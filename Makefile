
SCRIPT_DIR=$$(pwd)/scripts

.PHONY: all
all: setup provisioning


.PHONY: setup
setup:
	@$(SCRIPT_DIR)/XcodeInstall.sh
	@$(SCRIPT_DIR)/HomebrewInstall.sh
	@$(SCRIPT_DIR)/PipUpgrade.sh
 	@$(SCRIPT_DIR)/AnsibleInstall.sh

.PHONY: provisioning
provisioning:
	@$(SCRIPT_DIR)/AnsiblePlay.sh
	@$(SCRIPT_DIR)/NotifyFinished.sh
