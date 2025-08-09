# Variables
name ?= new-project
folder ?= homework
dir = $(folder)/$(name)
type ?= typ # md, qmd, typ
template_file = templates/main.$(type)
target_file = $(dir)/$(name).$(type)

# default
all: homework

# homework
homework_path = homework/$(name)
homework_file = $(homework_path)/$(name).$(type)
homework:
	@mkdir -p $(homework_path)
	@cp $(template_file) $(homework_file)
	@cd $(homework_path)
.PHONY: homework


# project
project_path = projects/$(name)
project_file = $(project_path)/$(name).$(type)
project:
	@mkdir -p $(project_path)
	@cp $(template_file) $(project_file)
	@cd $(project_path)
.PHONY: project


clean:
	@read -p "⚠ Are you sure? [Y/N] " ans && ans=$${ans:-N} ; \
	if [ $${ans} = "y" ] || [ $${ans} = "Y" ]; then \
		printf $(_SUCCESS) "Continuing Deletion" ; \
		rm -rf $(dir) ; \
	else \
		printf $(_DANGER) "Canceling Deletion" ; \
	fi

_SUCCESS := "\033[32m[%s]\033[0m %s\n" # Green text for "printf"
_DANGER := "\033[31m[%s]\033[0m %s\n" # Red text for "printf"

