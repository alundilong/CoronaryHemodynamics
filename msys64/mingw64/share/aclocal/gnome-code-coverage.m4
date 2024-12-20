dnl GNOME_CODE_COVERAGE
dnl
dnl Defines CODE_COVERAGE_CFLAGS and CODE_COVERAGE_LDFLAGS which should be
dnl included in the CFLAGS and LIBS/LDFLAGS variables of every build target
dnl (program or library) which should be built with code coverage support.
dnl Also defines GNOME_CODE_COVERAGE_RULES which should be substituted in your
dnl Makefile; and $enable_code_coverage which can be used in subsequent
dnl configure output.
dnl
dnl Note that all optimisation flags in CFLAGS must be disabled when code
dnl coverage is enabled.
dnl
dnl Derived from Makefile.decl in GLib, originally licenced under LGPLv2.1+.
dnl This file is licenced under LGPLv2.1+.
dnl
dnl Usage example:
dnl configure.ac:
dnl    GNOME_CODE_COVERAGE
dnl
dnl Makefile.am:
dnl    @GNOME_CODE_COVERAGE_RULES@
dnl    my_program_LIBS = … $(CODE_COVERAGE_LDFLAGS) …
dnl    my_program_CFLAGS = … $(CODE_COVERAGE_CFLAGS) …
dnl
dnl This results in a “check-code-coverage” rule being added to any Makefile.am
dnl which includes “@GNOME_CODE_COVERAGE_RULES@” (assuming the module has been
dnl configured with --enable-code-coverage). Running `make check-code-coverage`
dnl in that directory will run the module’s test suite (`make check`) and build
dnl a code coverage report detailing the code which was touched, then print the
dnl URI for the report.

AU_DEFUN([GNOME_CODE_COVERAGE],[
	AX_CODE_COVERAGE
	GNOME_CODE_COVERAGE_RULES=$CODE_COVERAGE_RULES

	AC_SUBST([GNOME_CODE_COVERAGE_RULES])
	m4_ifdef([_AM_SUBST_NOTMAKE], [_AM_SUBST_NOTMAKE([GNOME_CODE_COVERAGE_RULES])])
],
[[$0: This macro is deprecated. You should use AX_CODE_COVERAGE instead and
replace uses of GNOME_CODE_COVERAGE_RULES with CODE_COVERAGE_RULES.
See: http://www.gnu.org/software/autoconf-archive/ax_code_coverage.html#ax_code_coverage]])
