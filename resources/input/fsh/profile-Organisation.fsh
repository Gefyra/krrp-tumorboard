Profile: Organisation
Parent: Organization
Id: Organisation
Title: "Organisation"
Description: "Organisation (Krankenhaus, Praxis)"
* id MS
  * ^short = "eindeutige ID der Ressource auf dem Server"
* name MS
* address MS
* address.line MS
  * ^short = "Straße und Hausnummer"
* address.city MS
  * ^short = "Ort"
* address.postalCode MS
  * ^short = "PLZ"


Instance: Organisation-example-1
InstanceOf: Organisation
Usage: #example
* name = "Klinikum Musterhausen"
* address[0]
  * line[0] = "Beispielpfad 5-9"
  * city = "Musterhausen"
  * postalCode = "12456"
