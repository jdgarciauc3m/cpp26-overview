#include $(OVERVIEW_STL_DIR)/Makefile.mk

$(FINAL_OVERVIEW_PDF): $(OVERVIEW_PARTS) $(CONFIG_PARTS) | $(FINAL_DIR)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(OVERVIEW_DIR)/slides
