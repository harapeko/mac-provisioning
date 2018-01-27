
SCRIPT_DIR=$$(pwd)/scripts

.PHONY: all
all: setup provisioning


.PHONY: setup
setup:
	@$(SCRIPT_DIR)/XcodeInstall.sh
	@$(SCRIPT_DIR)/AnsibleInstall.sh
	@$(SCRIPT_DIR)/AnsibleUpdate.sh

.PHONY: provisioning
provisioning:
	# @$(SCRIPT_DIR)/AnsiblePlay.sh
	@$(SCRIPT_DIR)/NotifyFinished.sh
