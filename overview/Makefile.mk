include $(OVERVIEW_INTRO_DIR)/Makefile.mk
include $(OVERVIEW_UBSAFETY_DIR)/Makefile.mk
include $(OVERVIEW_REFLECTION_DIR)/Makefile.mk
include $(OVERVIEW_CONTRACTS_DIR)/Makefile.mk
include $(OVERVIEW_SENDRECV_DIR)/Makefile.mk
include $(OVERVIEW_PARALLEL_DIR)/Makefile.mk
include $(OVERVIEW_SUMMARY_DIR)/Makefile.mk

$(FINAL_OVERVIEW_PDF): $(OVERVIEW_PARTS) $(CONFIG_PARTS) | $(FINAL_DIR)
	$(LATEXMK) -jobname=$(subst /,-,$(<D)) $(OVERVIEW_DIR)/slides
