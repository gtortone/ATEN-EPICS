#!../../bin/linux-x86_64/ATEN-EPICS

< envPaths
cd "${TOP}"
epicsEnvSet("MIBDIRS", "+$(TOP)/mibs")

dbLoadDatabase("dbd/ATEN-EPICS.dbd")
ATEN_EPICS_registerRecordDeviceDriver(pdbbase)

dbLoadTemplate("$(TOP)/db/ATEN-PDU.template", "PDU=usoppdu01")
dbLoadTemplate("$(TOP)/db/ATEN-PDU.template", "PDU=usoppdu02")

asSetFilename("$(TOP)/iocBoot/${IOC}/default.as")

cd "${TOP}/iocBoot/${IOC}"
iocInit
