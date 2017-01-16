TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ATEN-EPICS
# ATEN-EPICS.dbd will be created and installed
DBD += ATEN-EPICS.dbd

# ATEN-EPICS.dbd will be made up from these files:
ATEN-EPICS_DBD += base.dbd

# Include dbd files from all support applications:
ATEN-EPICS_DBD += devSnmp.dbd

# Add all the support libraries needed by this IOC
ATEN-EPICS_LIBS += devSnmp

# ATEN-EPICS_registerRecordDeviceDriver.cpp derives from ATEN-EPICS.dbd
ATEN-EPICS_SRCS += ATEN-EPICS_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ATEN-EPICS_SRCS_DEFAULT += ATEN-EPICSMain.cpp
ATEN-EPICS_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ATEN-EPICS_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ATEN-EPICS_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
USR_CFLAGS += `net-snmp-config --cflags`
USR_LDFLAGS += `net-snmp-config --libs`
PROD_LDLIBS += `net-snmp-config --libs`
