*Problem Set 1: Demand Estimation with Micro Data

set more off

use DataMatUpdated.dta
gen agehp = age * hp
gen genderfe = gender * fe

mlogit choice agehp genderfe
