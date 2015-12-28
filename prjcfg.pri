#
#
#

isEmpty(QMKBLD_PRJCFG_INCLUDED) { # include guard
QMKBLD_PRJCFG_INCLUDED = 1

#
# Main project build modes
#
PRJ_CONFIG = debug
#PRJ_CONFIG = release


# Project wide coverage support
#PRJ_COVERAGE = 1

# Project wide profiling support
#PRJ_PROFILE = 1


#
# Sun Studio specific items
#
contains(QMK_COMP,Sunpro) {

# Printing compiler steps
#PRJ_CONFIG *= ss_compstep

# Stack overflow check
#PRJ_CONFIG *= ss_stkovf

# Coverage support
#PRJ_CONFIG *= ss_tcov

# Thread analyzer support
#PRJ_CONFIG *= ss_tha

!isEmpty(PRJ_COVERAGE): PRJ_CONFIG *= ss_tcov

}

#
# Windows specific configuration
#
win32 {
	PRJ_CONFIG += console
  DEFINES *= _VARIADIC_MAX=10
  #DEFINES *= GTEST_USE_OWN_TR1_TUPLE=1
  #DEFINES *= GTEST_HAS_TR1_TUPLE=0
  INCLUDEPATH += $(QTDIR)/include/QtANGLE
}


isQmkDebug() {
	message(PRJ_CONFIG = $$PRJ_CONFIG)
}

# Project wide include directory
PRJ_INC=$(PRJ_ROOT)/inc

# Now transfer project configuration tokens into CONFIG
CONFIG += $$PRJ_CONFIG



} # end of include guard
