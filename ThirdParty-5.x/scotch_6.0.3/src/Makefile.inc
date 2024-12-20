.SUFFIXES: .dll .a .def

GENERAL_RULES = $(WM_DIR)/rules/General
RULES         = $(WM_DIR)/rules/$(WM_ARCH)$(WM_COMPILER)
sinclude $(GENERAL_RULES)/mplib$(WM_MPLIB)
sinclude $(RULES)/mplib$(WM_MPLIB)

EXE  = .exe
#MJ LIB  = .a
LIB  = .dll
CPLIB  = .*
OBJ  = .o

CCS  = $(WM_CC) -m$(WM_ARCH_OPTION) -std=c99
CCP  = $(WM_CC) -m$(WM_ARCH_OPTION) -std=c99
CCD  = $(CCS)
CFLAGS = -O3 -Wall -Dlinux -DCOMMON_WINDOWS -DNDEBUG -DWIN64 -DLITTLE_ENDIAN -Drestrict=__restrict -DCOMMON_RANDOM_RAND -DCOMMON_STUB_FORK -D'pipe(pfds)=_pipe(pfds,1024,0x8000)' -DCOMMON_FILE_COMPRESS_GZ -DCOMMON_RANDOM_FIXED_SEED -DSCOTCH_RENAME -I$(WM_COMPILER_DIR)/include $(PINC) $(PFLAGS)
# -DCOMMON_TIMING_OLD

LDFLAGS_P1 = -L$(FOAM_LIBBIN)/ -lz -lm
LIBLDFLAGS = -shared $(LDFLAGS_P1) -Wl,--output-def,$(*).def,--out-implib,$(*).a,--enable-auto-import,--strip-all
LDFLAGS  = $(LDFLAGS_P1) -Wl,--enable-auto-import,--force-exe-suffix,--strip-all

LDFLAGS_P1_PT  = $(PLIBS) $(LDFLAGS_P1)
LIBLDFLAGS_PT  = -shared $(LDFLAGS_P1_PT) -Wl,--output-def,$(*).def,--out-implib,$(*).a,--enable-auto-import,--strip-all
LDFLAGS_PT = $(LDFLAGS_P1_PT) $(LDFLAGS)

AR      = $(CCS)
ARFLAGS = $(LIBLDFLAGS) -o
ARSFLAGS = -L./ -lscotcherr $(LDFLAGS_P1)
ARPFLAGS = -L./ -lptscotcherr -lscotch $(LDFLAGS_P1_PT)
ARSMFLAGS = -L../libscotch/ -lscotch $(LDFLAGS_P1)
ARPMFLAGS = -L../libscotch/ -lscotch -lptscotch $(LDFLAGS_P1_PT)
CAT  = cat
CP      = cp
LEX     = flex -Pscotchyy -olex.yy.c
LN      = ln
MAKE = make
MKDIR   = mkdir
MV      = mv
RANLIB  = echo
YACC    = bison -pscotchyy -y -b y
