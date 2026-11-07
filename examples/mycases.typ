
// Define uses cases to display. Note that the key will be used to define a labels of the form `uc-{key}`, e.g. for cases = (mycase: (....)) -> @uc-mycase
#let cases = (
  wayne: (
    title: [Bruce Wayne],
    narrative: [
      #lorem(80)
    ],
    body: [
      / Primary Actor: Bruce Wayne
      / Scope: Save World
      / Level: User Goal
      // / Stakeholders & Interests:
      / Main Success Scenario: 
      - 1. Spend lots of money
      - 2. Problem solved
      / Extensions:
      - 1a. Spend more money yet
    ]
  ),

  batman: (
    title: [Batman],
    narrative: [
      #lorem(100)
    ],
    body: [
      / Primary Actor: Batman
      / Scope: Save World
      / Level: User Goal
      // / Stakeholders & Interests:
      / Main Success Scenario: 
      - 1. Get cool suit
      - 2. Get cool car
      - 3. Problem solved
      / Extensions:
      - 2a. Car can turn into a motorcycle
    ]
  ),

)