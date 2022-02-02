all:
	@echo "\nRunning lua project...\n"
	lua src/project.lua
test:
	@echo "\nRunning tests...\n"

style:
	@echo "\nRunning stylua...\n"
	stylua --check .

lint: style
	@echo "\nRunning luacheck\n"
	luacheck src/*

.PHONY: test lint style
