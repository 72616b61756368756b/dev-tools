.DEFAULT_GOAL := help

export V := false
export CMD_PREFIX := @
ifeq ($(V),true)
	CMD_PREFIX :=
endif

help: ### Display this help message
	$(CMD_PREFIX)awk 'BEGIN {FS = ":.*?### "} /^[a-zA-Z_-]+:.*?### / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
.PHONY: help

%:
    @:
