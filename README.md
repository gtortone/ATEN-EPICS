# ATEN-EPICS
EPICS IOC for ATEN PDUs

This IOC is based on EPICS SNMP Device Support Module (https://groups.nscl.msu.edu/controls/files/devSnmp.html)


PV defined in ATEN-PDU.db
-------------------------

- Global PVs

| PV name                  | units | access |
| ------------------------ | ----- |:------:|
| $(PDU):temperature       | °C    | R |
| $(PDU):humidity          | %RH   | R |
| $(PDU):voltage           | V     | R |
| $(PDU):current           | A     | R |
| $(PDU):power             | VA    | R |

- Outlets PVs

| PV name                  | units   | access |
| -------------------------| ------- |:------:|
| $(PDU):o$(OUTLET):name   |         | R |
| $(PDU):o$(OUTLET)        | on/off  | W |
| $(PDU):o$(OUTLET):status | on/off  | R |
| $(PDU):o$(OUTLET):voltage| V       | R |
| $(PDU):o$(OUTLET):current| A       | R |
| $(PDU):o$(OUTLET):power  | VA      | R |


CA Access Security
------------------
   
File iocBoot/iocATEN-EPICS/default.as defines allowed hosts and users for write permission on PV.
