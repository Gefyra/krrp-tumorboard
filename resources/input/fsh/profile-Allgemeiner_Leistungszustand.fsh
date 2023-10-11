Profile: ECOG   
Parent: Observation
Id: ecog
Title: "ECOG"
Description: "Allgemeiner Leistungszustand: ECOG"
* extension contains $EpisodeOfCare named episodeOfCare 0..1
* code 1..1
* code = LOINC#89247-1 "ECOG Performance Status score"
* subject 1..1
* subject only Reference(TumorPatient)
* valueCodeableConcept from ECOGPerformanceStatusVS


Instance: ECOGExample
InstanceOf: ECOG
Description: "Beispielinstanz einer Observation welche einen ECOG Wert enthält."
* extension[episodeOfCare].valueReference =  Reference(Tumorerkrankung)
* status = #final
* subject = Reference(Beispielpatient)
* valueCodeableConcept = LOINC#LA9623-5 "ECOG 1: (Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen)"

