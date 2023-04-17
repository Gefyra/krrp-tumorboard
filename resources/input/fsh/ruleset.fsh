RuleSet: meta-profile
* ^status = #draft
* ^experimental = true
* ^date = "2023-02-17"
* ^publisher = "Krebsregister Rheinland-Pfalz gGmbH"
* ^contact.name = "Krebsregister Rheinland-Pfalz gGmbH"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.krebsregister-rlp.de/"
* ^contact.telecom.use = #work
* ^copyright = "Copyright 2023 Krebsregister Rheinland-Pfalz gGmbH"

RuleSet: meta-instance
* status = #draft
* date = "2023-02-17"
* publisher = "Krebsregister Rheinland-Pfalz gGmbH"
* contact
  * name = "Krebsregister Rheinland-Pfalz gGmbH"
  * telecom
    * system = #url
    * value = "https://www.krebsregister-rlp.de/"
    * use = #work

RuleSet: NotUsed(path)
* {path} ^short = "Wird in diesem Profil nicht genutzt"
* {path} ^definition = "Wird nicht in diesem Profil genutzt"

RuleSet: SliceReferenceOnProfile(path)
* {path} ^slicing.discriminator.type = #profile
* {path} ^slicing.discriminator.path = "$this.resolve()"
* {path} ^slicing.rules = #open
* {path} ^slicing.description = "Slicing based on profile conformance of the referenced resource."

RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

RuleSet: LOINCCopyrightForVS
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false