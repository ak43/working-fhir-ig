Profile: AKPatient
Parent: Patient
Title: "Ethiopian Patient (AK)"
Description: "Ethiopian patient profile ..."

* name 0..1
  * given 0..1
  * family 0..1 

* extension contains    
  http://hl7.org/fhir/StructureDefinition/humanname-fathers-family named fathersName 0..1 MS
  and 
  GrandfatherName named grandfatherName 0..1 


* birthDate 0..1
* birthDate.extension contains DoBEstimated named doBEstimated 0..1

* identifier ^slicing.discriminator[0].type = #pattern
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slicing based on identified systems"

* identifier contains nationalIdentifier 0..1

* identifier[nationalIdentifier].system = "http://id.gov.et/nationalIdentified"


* gender 0..1
* gender from AKGenderVS (required)

* maritalStatus 0..1


// * name.extension contains FatherName named fatherName 0..1
// * name.extension contains GrandfatherName named grandfatherName 0..1

* extension contains MRN named mrn 0..1

* extension contains NationalId named nationalId 0..1

* address 0..1
* address
  * extension contains Kebele named kebele 0..1
  * extension contains KetenaVillage named ketenaVillage 0..1
  * extension contains http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber 
named houseNumber 0..1 MS
* address.extension contains ZoneSubcity named ZoneSubcity 0..1
* address.state 0..1
* address.city 0..1
* address.district 0..1