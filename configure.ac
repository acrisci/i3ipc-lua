AC_PREREQ(2.69)

AC_INIT([i3ipc-lua], [0.1.1], [tony@dubstepdish.com])

AC_PREFIX_DEFAULT([/usr])
AC_CONFIG_AUX_DIR([build])
AC_CONFIG_MACRO_DIR([build/autotools])

AM_INIT_AUTOMAKE([-Wall -Werror foreign -Wno-portability])

AX_PROG_LUA

PKG_CHECK_MODULES([I3IPC], [i3ipc-glib-1.0 >= 0.1])

AC_MSG_CHECKING(for lua-lgi)

AM_CONDITIONAL([HAS_LGI], [`$LUA -l lgi -e "" 2>/dev/null`])

AM_COND_IF([HAS_LGI], AC_MSG_RESULT([yes]), AC_MSG_ERROR([could not find lua-lgi]))

AM_SILENT_RULES([yes])

AC_CONFIG_FILES([
                 Makefile
                 ])

AC_OUTPUT
