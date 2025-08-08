SRC_DIR := ../src
TMP_DIR := tmp
SH = bash
report.pdf: report_new.dvi
	dvipdfmx $<
	
report.dvi: report_new.tex Makefile
	uplatex  -interaction=batchmode $<
	uplatex  -interaction=batchmode $<
