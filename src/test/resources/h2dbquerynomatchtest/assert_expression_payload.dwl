%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "PatientSummary": {
    "PatientSummaryText": " PACT data not found for the given criteria.",
    "nonVAPCProviders": null,
    "patientAssignmentsAtStations": null,
    "nonVAProviders": null
  }
})