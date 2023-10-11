Profile:        TumorErkrankung
Parent:         EpisodeOfCare
Id:             tumorErkrankung
Title:          "Tumorerkrankung"
Description:    "Tumorerkrankung/Fall, dient als Klammer der Krebserkrankung"
* status 1.. MS
* type 1..1
* type = $NCIT#C16213 "Cancer Diagnosis"
* diagnosis.condition only Reference(TumorDiagnose)
* patient 1..1
* patient only Reference(TumorPatient)

Instance: TumorErkrankungExample
InstanceOf: TumorErkrankung
Description: "Ein Beispiel für die Episode einer Tumorerkrankung."
* status = #active
* diagnosis.condition = Reference("TODO-INSTANZs")
* diagnosis.rank = 1
* patient = Reference(TumorPatient-example-1)
