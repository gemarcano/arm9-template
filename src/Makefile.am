include $(top_srcdir)/common.mk

noinst_PROGRAMS = template
template_CFLAGS=$(AM_CFLAGS) -T$(srcdir)/arm9loaderhax.ld -nostartfiles
template_LDFLAGS=$(AM_LDFLAGS) -lctr
template_SOURCES = 
#template_LDADD = $(top_builddir)/src/libctr9.a

EXTRA_DIST = arm9loaderhax.ld

all-local: test.bin
clean-local:
	rm -f template.bin

template.bin: test
	$(OBJCOPY) $(OCFLAGS) -O binary template template.bin

