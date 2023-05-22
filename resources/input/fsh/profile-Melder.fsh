Profile: Melder
Parent: Practitioner
Id: Melder
Title: "Melder"
Description: "Meldende/anfragende ÄrztIn"
* id MS
  * ^short = "eindeutige ID der Ressource auf dem Server"
* name MS
  * text MS
  * ^short = "vollständiger Name des Melders"
* telecom MS
  * system 1.. MS
    * ^short = "Art des Telekommunikationssystems (Unterscheidungskriterium)"
  * value 1.. MS
    * ^short = "Kontaktinformation (z.B. Telefonnummer, E-Mail-Adresse)"


Instance: Melder-example-1
InstanceOf: Melder
Usage: #example
* name.text = "Dr. Herbert Hundertschön"
* telecom[0]
  * system = #phone
  * value = "012233-555-667"
* telecom[1]
  * system = #email
  * value = "hh@klinikum-musterhausen.de"
