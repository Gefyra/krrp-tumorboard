Profile: Histologie
Parent: Observation
Id: histologie
Title: "Histologie"
Description: "Histologie"
* status MS
* code MS
* code = LNC#59847-4
  * text MS
    * ^short = "Morphologie-Freitext" 
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains icdo3 1..1
  * coding[icdo3] MS
    * ^patternCoding.system = ICDO3
    * version MS
* subject 1.. MS
* subject only Reference(TumorPatient)
* focus 1.. MS
* focus only Reference(Tumor)

Instance: Histologie-Example
InstanceOf: Histologie
Usage: #example
Title: "HistologieExample"
Description: "HistologieExample"
* status = #final
* code.text = "Freitext"
* subject = Reference(TumorPatient-example-1)
* focus = Reference(Tumor-Example)

Profile: Tumor
Parent: Specimen
Id: tumor
Title: "Tumor"
Description: "Tumor"
* identifier MS
  * ^short = "Histologie-Einsendenummer"
* collection.collectedDateTime MS
  * ^short = "Tumor Histologiedatum"

Instance: Tumor-Example
InstanceOf: Tumor 
Usage: #example
Title: "Tumor-Example"
Description: "Tumor-Example"
* identifier
  * system = "http://example.org/identifier"
  * value = "1234567890"
* collection.collectedDateTime = "2023-08-16T04:49:38Z"