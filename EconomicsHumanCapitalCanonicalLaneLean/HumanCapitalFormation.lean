import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsHumanCapitalCanonicalLaneLean.GeneralEquilibrium

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure HumanCapitalAccumulationPackage where
  timeAllocation : Type u
  educationInvestment : Prop
  skillFormation : Prop
  experienceRates : Prop
  depreciation : Prop

structure HumanCapitalEvidence (H : HumanCapitalAccumulationPackage) where
  educationInvestmentClosed : H.educationInvestment
  skillFormationClosed : H.skillFormation
  experienceRatesClosed : H.experienceRates
  depreciationClosed : H.depreciation

def HumanCapitalAccumulationClosed (H : HumanCapitalAccumulationPackage) : Prop :=
  H.educationInvestment ∧ H.skillFormation ∧ H.experienceRates ∧ H.depreciation

theorem human_capital_accumulation_closed_from_evidence (H : HumanCapitalAccumulationPackage)
    (E : HumanCapitalEvidence H) : HumanCapitalAccumulationClosed H := by
  exact And.intro E.educationInvestmentClosed
    (And.intro E.skillFormationClosed
      (And.intro E.experienceRatesClosed E.depreciationClosed))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse
