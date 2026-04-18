FINAL_DIR=final

LATEXMK=latexmk -pdf -silent -file-line-error -halt-on-error -outdir=$(FINAL_DIR) 

CONFIG_PARTS= \
	metadata.tex \
	license-cc.tex \
	config/* \
	$(LOGOS) \

LOGOS=logos/*

include overview/Makefile.def

.PHONY: all clean slides

all:	slides

clean:
	rm -Rf $(FINAL_DIR)

$(FINAL_DIR):
	mkdir -p $(FINAL_DIR)

slides: $(ALL_SLIDES_FINAL_PDF)

include $(OVERVIEW_DIR)/Makefile.mk
