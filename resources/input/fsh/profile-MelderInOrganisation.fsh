Profile: MelderInOrganisation
Parent: PractitionerRole
Id: MelderInOrganisation
Title: "Melder in Organisation"
Description: "Zuordnung des Melders zu einer Organisation"
* id MS
  * ^short = "eindeutige ID der Ressource auf dem Server"
* practitioner 1.. MS
  * ^short = "Referenz auf den Melder"
* practitioner only Reference(Melder)
* organization 1.. MS
  * ^short = "Referenz auf die Organisation"
* organization only Reference(Organisation)


Instance: MelderInOrganisation-example-1
InstanceOf: MelderInOrganisation
Usage: #example
* practitioner = Reference(Melder-example-1)
* organization = Reference(Organisation-example-1)
