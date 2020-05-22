job-count ?= $(shell nproc)

loglevel ?= PROGRESS

lilypond-flags ?= \
	--loglevel=${loglevel} \
	-djob-count=${job-count} \
	-dmidi-extension=mid \
	-dno-point-and-click \
	-drelative-includes \
	-dwarning-as-error

lilypond ?= lilypond ${lilypond-flags}

prefix ?= out

.PHONY: all
all: install

.PHONY: install
install: ${prefix}/score.pdf

${prefix}/score.pdf: score.ly global.ily $(wildcard parts/*.ily)
	@ mkdir -p $(@D)
	${lilypond} -o ${prefix}/${pdfName} $<
