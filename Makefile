.PHONY: clean All

All:
	@echo "----------Building project:[ 1_7 - Debug ]----------"
	@cd "1_7" && "$(MAKE)" -f  "1_7.mk" && "$(MAKE)" -f  "1_7.mk" PostBuild
clean:
	@echo "----------Cleaning project:[ 1_7 - Debug ]----------"
	@cd "1_7" && "$(MAKE)" -f  "1_7.mk" clean
