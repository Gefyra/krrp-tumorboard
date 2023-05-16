Profile: Operation
Parent: Procedure
Id: operation
Title: "Operation"
Description: "Hier steht die Beschreibung"

Profile: OperationOpsCode
Parent: Procedure
Id: operation-ops-code
Title: "Operation OPS Code"
Description: "Hier steht die Beschreibung"
* partOf 1.. MS
* partOf only Operation
* code 1.. MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding 
    * system 1.. MS
    * code 1.. MS
    * version MS
  * coding contains ops 1..1 and loinc 0..1
  * coding[ops] MS
    * system = $OPS
  * coding[loinc]
    * system = LNC
* performed[x] only dateTime
* performed[x] 1.. MS
* subject 1.. MS

Instance: OperationOpsCodeExample
InstanceOf: OperationOpsCode
Usage: #example
* partOf = Reference(OperationExample)
* code.coding[ops]
  * code = #5-123.4
  * version = "2023"
* performedDateTime = "2023-04-01"
* status = #completed
* subject = Reference(TumorPatient-example-1)



Instance: OperationExample
InstanceOf: Operation
Usage: #example
* status = #completed
* subject = Reference(TumorPatient-example-1)