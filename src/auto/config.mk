#
# config.mk.in -- autoconf template for Vim on Unix		vim:ts=8:sw=8:
#
# DO NOT EDIT config.mk!!  It will be overwritten by configure.
# Edit Makefile and run "make" or run ./configure with other arguments.
#
# Configure does not edit the makefile directly. This method is not the
# standard use of GNU autoconf, but it has two advantages:
#   a) The user can override every choice made by configure.
#   b) Modifications to the makefile are not lost when configure is run.
#
# I hope this is worth being nonstandard. jw.



VIMNAME		= vim
EXNAME		= ex
VIEWNAME	= view

CC		= gcc
DEFS		= -DHAVE_CONFIG_H
CFLAGS		= -g -O2 -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
CPPFLAGS	= 
srcdir		= .

LDFLAGS		=  -L/usr/local/lib -Wl,--as-needed
LIBS		= -lm -lncurses -lelf -lnsl   -lacl -lattr -lgpm -ldl
TAGPRG		= etags

CPP		= gcc -E
CPP_MM		= M
DEPEND_CFLAGS_FILTER = | sed 's+-I */+-isystem /+g'
LINK_AS_NEEDED	= yes
X_CFLAGS	=  
X_LIBS_DIR	=  
X_PRE_LIBS	=  -lSM -lICE -lXpm
X_EXTRA_LIBS	=  -lXdmcp -lSM -lICE
X_LIBS		= -lXt -lX11

LUA_LIBS	= -L/usr/lib -llua
LUA_SRC		= if_lua.c
LUA_OBJ		= objects/if_lua.o
LUA_CFLAGS	= -I/usr/include
LUA_PRO		= if_lua.pro

MZSCHEME_LIBS	= 
MZSCHEME_SRC	= 
MZSCHEME_OBJ	= 
MZSCHEME_CFLAGS	= 
MZSCHEME_PRO	= 
MZSCHEME_EXTRA	= 
MZSCHEME_MZC	= 

PERL		= 
PERLLIB		= 
PERL_XSUBPP	= 
PERL_LIBS	= 
SHRPENV		= 
PERL_SRC	= 
PERL_OBJ	= 
PERL_PRO	= 
PERL_CFLAGS	= 

PYTHON_SRC	= if_python.c
PYTHON_OBJ	= objects/if_python.o
PYTHON_CFLAGS	= -I/usr/include/python2.7 -DPYTHON_HOME='"/usr"' -pthread -fPIE
PYTHON_LIBS	= -L/usr/lib/python2.7/config -lpython2.7 -lpthread -ldl -lutil -lm -Xlinker -export-dynamic
PYTHON_CONFDIR	= /usr/lib/python2.7/config
PYTHON_GETPATH_CFLAGS = -DPYTHONPATH='":/usr/lib/python27.zip:/usr/lib/python2.7:/usr/lib/python2.7/plat-linux2:/usr/lib/python2.7/lib-tk:/usr/lib/python2.7/lib-old:/usr/lib/python2.7/lib-dynload:/usr/lib/python2.7/site-packages:/usr/lib/python2.7/site-packages/gtk-2.0"' -DPREFIX='"/usr"' -DEXEC_PREFIX='"/usr"'

PYTHON3_SRC	= 
PYTHON3_OBJ	= 
PYTHON3_CFLAGS	= 
PYTHON3_LIBS	= 
PYTHON3_CONFDIR	= 

TCL		= 
TCL_SRC		= 
TCL_OBJ		= 
TCL_PRO		= 
TCL_CFLAGS	= 
TCL_LIBS	= 

HANGULIN_SRC	= 
HANGULIN_OBJ	= 

WORKSHOP_SRC	= 
WORKSHOP_OBJ	= 

NETBEANS_SRC	= netbeans.c
NETBEANS_OBJ	= objects/netbeans.o

RUBY		= 
RUBY_SRC	= 
RUBY_OBJ	= 
RUBY_PRO	= 
RUBY_CFLAGS	= 
RUBY_LIBS	= 

SNIFF_SRC	= 
SNIFF_OBJ	= 

AWK		= gawk

STRIP		= strip

EXEEXT		= 

COMPILEDBY	= 

INSTALLVIMDIFF	= installvimdiff
INSTALLGVIMDIFF	= installgvimdiff
INSTALL_LANGS	= install-languages
INSTALL_TOOL_LANGS	= install-tool-languages

### sed command to fix quotes while creating pathdef.c
QUOTESED        = sed -e 's/[\\"]/\\&/g' -e 's/\\"/"/' -e 's/\\";$$/";/'

### Line break character as octal number for "tr"
NL		= "\\012"

### Top directory for everything
prefix		= /usr/local

### Top directory for the binary
exec_prefix	= ${prefix}

### Prefix for location of data files
BINDIR		= ${exec_prefix}/bin

### For autoconf 2.60 and later (avoid a warning)
datarootdir	= ${prefix}/share

### Prefix for location of data files
DATADIR		= ${datarootdir}

### Prefix for location of man pages
MANDIR		= ${datarootdir}/man

### Do we have a GUI
GUI_INC_LOC	= -pthread -I/usr/include/gtk-2.0 -I/usr/lib/gtk-2.0/include -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/libdrm -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng16 -I/usr/include/pango-1.0 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/harfbuzz 
GUI_LIB_LOC	= 
GUI_SRC		= $(GTK_SRC)
GUI_OBJ		= $(GTK_OBJ)
GUI_DEFS	= $(GTK_DEFS)
GUI_IPATH	= $(GTK_IPATH)
GUI_LIBS_DIR	= $(GTK_LIBS_DIR)
GUI_LIBS1	= $(GTK_LIBS1)
GUI_LIBS2	= $(GTK_LIBS2)
GUI_INSTALL	= $(GTK_INSTALL)
GUI_TARGETS	= $(GTK_TARGETS)
GUI_MAN_TARGETS	= $(GTK_MAN_TARGETS)
GUI_TESTTARGET	= $(GTK_TESTTARGET)
GUI_TESTARG	= $(GTK_TESTARG)
GUI_BUNDLE	= $(GTK_BUNDLE)
NARROW_PROTO	= 
GUI_X_LIBS	= 
MOTIF_LIBNAME	= 
GTK_LIBNAME	= -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype 

### Any OS dependent extra source and object file
OS_EXTRA_SRC	= 
OS_EXTRA_OBJ	= 

### If the *.po files are to be translated to *.mo files.
MAKEMO		= yes

MSGFMT		= msgfmt

# Make sure that "make first" will run "make all" once configure has done its
# work.  This is needed when using the Makefile in the top directory.
first: all
