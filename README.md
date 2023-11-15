![logo](main_logo.png)
# ICCONIC-HIPFX

## Hypothesis
The study's central hypothesis explores whether hospital performance in terms of mortality after surgery worsens when the intervention is delayed after a hip fracture in a population over 65. 

## Objectives
General objective
Determinate that prompt action in the acute treatment of hip fracture in the elderly (frailty) population implies health care capacity and processes in weighting the individual situation of each patient in terms of prognosis, concurrent clinical conditions, medication, autonomy and self-care ability, and social circumstances in the indication of surgery with the expectation for the patient returning home.

## Specific Objectives
- 	Evaluate the impact of time to hip surgery after fracture on mortality 
- Identify polypharmacy as a risk factor for hip fracture and medication coordination after hip fracture in the elderly population 
- Determinate hip fracture outcomes depending on socioeconomic factors

## Methodology
Design an observational retrospective longitudinal multi-country cohort study of individuals aged 65+ admitted to a hospital due to hip fracture that underwent hip pinning or replacement surgery between 01-01-2017 and 31-12-2021. 

The cohort to be studied includes any person 65 years old or older, with an unplanned hospital episode (inpatient), with a primary diagnosis of hip fracture, with the following exclusion criteria: a) any person under 65 years old, b) multiple fractures (polytrauma), or c) admission from another hospital.

To determine hip fracture outcomes depending on socioeconomic factors would be supplemented with analyses by socio-economic status.
The study will be conducted simultaneously in Spain (Aragón), the USA (Brown University), and several other countries (i.e., Denmark, Finland, Canada, and Sweden), following a federated research methodology based mainly on the reuse of healthcare data from administrative databases at regional or population level at each country.

## Information sources
The analyses are based on Individual-level data from health records (i.e., electronic medical records) and administrative data (information on hospital discharges). Data will be analysed locally by each of the participants using deployable analytical scripts. The participants will then share aggregated outputs of the local analyses to conduct a meta-analysis comparing hospitals’ performance in the different countries. 
In Aragon, data will be requested from BIGAN (established by Executive Order SAN/1355/2018 as an element of the health information system in Aragon).
Each participant will comply with their institution's data application processes to access and process data for research.  

## Population studied
All the population insured in Aragon with a relevant contact with the healthcare system during the study period.

## Relevant outcomes
Adjusted inpatient mortality by hospital: adjusted mortality after surgery due to hip fracture occurring in the index hospital episode considering patient attributes (i.e., age, sex, comorbidities, etc.), care process (i.e. time to surgery, month, weekend and bank holidays), and contextual data (i.e., socioeconomic data of the area of residence of the patient, etc.)
7-day adjusted mortality: adjusted mortality up to 7 days after surgery due to hip fracture considering patient attributes (i.e., age, sex, comorbidities, etc.), care process (i.e. time to surgery, month, weekend and bank holidays), and contextual data (i.e., socioeconomic data of the area of residence of the patient, etc.)
30-day adjusted mortality: adjusted mortality up to 30 days after surgery due to hip fracture considering patient attributes (i.e., age, sex, comorbidities, etc.), care process (i.e. time to surgery, month, weekend and bank holidays), and contextual data (i.e., socioeconomic data of the area of residence of the patient, etc.)
Polypharmacy: a measurement of the polypharmacy as defined by WHO (i.e., five or more drugs prescribed) for those patients in the cohort before and after admission to hospital due to hip fracture. 
Adequacy (adequate prescription): a measurement of patients with prescribed drugs before admission to the hospital with a known risk of adverse events related to falls or hip fracture and of those patients that continued with those treatments prescribed even after discharge from the hospital after hip fracture. 
Prescription evolution:  changes in drugs prescribed before admission to hospital due to hip fracture and after hospital discharge. 

## Variables of the study
You can see in Annex I the specification of the common data model and cohort selection criteria, including the description of the study's variables.

## Statistical Analysis
Data quality analysis on local inputs
Local analyses will be preceded by a data quality and validation analysis on local inputs at the origin. Those analyses will consist of univariate exploratory data analysis of each of the variables of the data entities required for the study and information on the compliance of the local input data with the data validation rules established by the common data model specification. 
Descriptive statistics
Local analysis will include descriptive statistics at the individual level on patient and episode characteristics and prescriptions before and after hospital admission due to hip fracture and on the characteristics of patients admitted and intervened in each hospital. 

## Adjusted mortality by time to surgery
A baseline regression model on inpatient mortality will be adjusted by time from hospital admission to surgery using a generalised additive model (GAM), considering time-to-surgery as a spline function to check its general association within the cohort in each country. The outputs of the baseline model and the graphical representation of the spline function characterising the association between mortality and time-to-surgery will be used to inform the international comparison. 

## Modelling hospital performance
A set of fully specified regression models, including covariables at patient, episode, hospital, and contextual levels on inpatient mortality, 7-day mortality and 30-day mortality after surgery for hip fracture will be adjusted using a generalised additive mixed model (GAMM) accounting for random effects at the hospital level. The outputs of each of the models, including the distribution of the expected probabilities for death at the hospital level, the distribution of the model's coefficients and errors, and the graphical representation of the local benchmark of the hospitals included in each data set according to the expected probability of death will be used to benchmark hospital performance. These outputs will be rendered as aggregated local output data to consider for the international comparison meta-analysis. 

## International hospital performance comparison (meta-analysis)
A meta-regression will be adjusted considering region or country-level contextual factors using the aggregated local output data on hospital performance as the primary input. The international comparison meta-analysis will compare hospital performance across the country/regions participating in the study, enabling ranking and providing information on the overall association of healthcare behaviour, namely time-to-surgery on mortality after surgery for hip fracture.

--- 

## HOW TO RUN IN DOCKER
Use the following code snippet to create the container.
```bash
docker pull ghcr.io/cienciadedatosysalud/icconic-hipfx:latest

docker run -d -p 127.0.0.1:3000:3000 --name icconic-hipfx-aspire ghcr.io/cienciadedatosysalud/icconic-hipfx:latest

```
Open your web browser at http://localhost:3000.

## HOW TO RUN IN SINGULARITY
Use the following code snippet to create the container.
```bash
singularity build icconic-hipfx.sif docker://ghcr.io/cienciadedatosysalud/icconic-hipfx:latest

singularity run -f -w icconic-hipfx.sif

```
Open your web browser at http://localhost:3000.

---

# How to contribute
- Repository: https://github.com/cienciadedatosysalud/ICCONIC-HIPFX
- Issue tracker: https://github.com/cienciadedatosysalud/ICCONIC-HIPFX/issues

# References
- ICCONIC PROJECT: https://hnhccomparisoncollaborative.wordpress.com/
- Data Science for Health Services and Policy Research group: https://cienciadedatosysalud.org/en/
- Common Data Model Builder library :https://github.com/cienciadedatosysalud/cdmb
- Analytic Software Pipeline Interface for Reproducible Execution (ASPIRE): https://github.com/cienciadedatosysalud/ASPIRE
- Atlas VPM community in Zenodo: https://zenodo.org/communities/atlasvpm
- Research Object Crate (RO-Crate): https://www.researchobject.org/ro-crate/
- ORCID: https://orcid.org/