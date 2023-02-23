Profile: TumorPatient
Parent: Patient
Id: TumorPatient
Title: "Tumor-Patient"
Description: "Patienten-Stammdaten"
* insert meta-profile
* id MS
  * ^short = "eindeutige ID der Ressource auf dem Server"
* identifier MS
  * ^short = "Identifikatoren (Business Identifier)"
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    krankenversichertennummer 0..1 MS
* identifier[krankenversichertennummer] only IdentifierKvid10
  * ^short = "Krankenversichertennummer"
  * ^patternIdentifier.type = $csIdentifierTypeDeBasis#GKV
  * type 1.. MS
  * system MS
  * value MS
* name MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* name contains Name 0..1 MS and Geburtsname 0..1 MS
  * use MS
    * ^short = "Verwendungszweck"
    * ^definition = "Codiert die Art des Namens, z.B. zur Unterscheidung des Geburtsnamens"
  * family MS
    * ^short = "Nachname"
  * given MS
    * ^short = "Vorname"
* name[Name]
  * ^short = "Personenname"
  * ^patternHumanName.use = #official
* name[Geburtsname]
  * ^short = "Geburtsname"
  * ^patternHumanName.use = #maiden
* gender MS
  * ^short = "Geschlecht"
* birthDate MS
  * ^short = "Geburtsdatum"
* address MS
* address only AddressDeBasis
* address.line MS
  * ^short = "Straße und Hausnummer"
  * extension[Strasse] MS
  * extension[Hausnummer] MS
* address.city MS
  * ^short = "Ort"
* address.postalCode MS
  * ^short = "PLZ"
* address.country MS
  * ^short = "Land"
* address.country from $vsIso3166-1-2 (required)
* address.country ^short = "Staat"
* address.country ^definition = "Staat in ISO-Codierung (zweistellig nach ISO-3166-2)"


Instance: TumorPatient-example-1
InstanceOf: TumorPatient
Usage: #example
* identifier[krankenversichertennummer]
  * value = "A123456789"
* name[Name]
  * family = "Mustermann"
  * given = "Martina"
* name[Geburtsname]
  * family = "Musterfrau"
* gender = #female
* birthDate = "1965-04-03"
* address[+]
  * line[+] = "Musterweg 22"
    * extension[Strasse].valueString = "Musterweg"
    * extension[Hausnummer].valueString = "22"
  * city = "Musterstadt"
  * postalCode = "12345"
  * country = "DE"
