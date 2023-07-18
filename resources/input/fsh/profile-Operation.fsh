Profile: Operation
Parent: Procedure
Id: operation
Title: "Operation"
Description: "Operation (chirurgischer Eingriff) in ihrer Gesamtheit."
* extension contains
    mcode-procedure-intent named intention 0..1
* extension[intention] MS
  * valueCodeableConcept MS
    * coding 1.. MS
      * system 1..1 MS
      * code 1..1 MS
* performed[x] MS
* performedDateTime MS
* complication from ObdsOpKomplikationVS (required)
* complication MS
  * coding MS
    * system 1.. MS
    * code 1.. MS

Profile: OperationEinzelprozedur
Parent: Procedure
Id: operation-einzelprozedur
Title: "Operation Einzelprozedur"
Description: "Einzelprozedur als Teil einer Operation. Typischerweise mittels OPS dokumentiert."
* partOf 1.. MS
* partOf only Reference(Operation)
* code 1.. MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding
    * system 1.. MS
    * code 1.. MS
    * version 1.. MS
  * coding contains ops 1..1 and loinc 0..1
  * coding[ops] MS
    * ^patternCoding.system = $OPS
  * coding[loinc]
    * ^patternCoding.system = LNC
* performed[x] only dateTime
* performed[x] 1.. MS
* subject 1.. MS


Instance: OperationExample
InstanceOf: Operation
Usage: #example
* status = #completed
* subject = Reference(TumorPatient-example-1)
* performedDateTime = "2023-06-07"


Instance: OperationEinzelprozedurExample
InstanceOf: OperationEinzelprozedur
Usage: #example
* partOf = Reference(OperationExample)
* code.coding[ops]
  * code = #5-123.4
  * version = "2023"
* performedDateTime = "2023-04-01"
* status = #completed
* subject = Reference(TumorPatient-example-1)
