# ATEN-EPICS
EPICS IOC for ATEN PDUs

This IOC is based on EPICS SNMP Device Support Module (https://groups.nscl.msu.edu/controls/files/devSnmp.html)

PV defined in ATEN-PDU.db
-------------------------

- Global PVs

   * $(PDU):temperature 
   * $(PDU):humidity
   * $(PDU):voltage
   * $(PDU):current
   * $(PDU):power

- Outlets PVs

   * $(PDU):o$(OUTLET):name
   * $(PDU):o$(OUTLET):status
   * $(PDU):o$(OUTLET):voltage
   * $(PDU):o$(OUTLET):current
   * $(PDU):o$(OUTLET):power
   
CA Access Security
------------------
   
File iocBoot/iocATEN-EPICS/default.as defines allowed hosts and users for write permission on PV.
