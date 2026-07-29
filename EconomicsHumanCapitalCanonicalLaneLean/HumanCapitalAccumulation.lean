import EconomicsHumanCapitalCanonicalLaneLean.ArrowDebreuEquilibrium

/-!
# Human Capital Accumulation
Model of investment in education and training.
-/

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure HumanCapitalAccumulationPackage (A : ArrowDebreuPackage UtilityTheoryPackage) where
  learningTechnology : Prop
  skillDepreciation : Prop
  timeAllocation : Prop
  schoolingSubsidy : Prop
  skillPremium : Prop

structure HumanCapitalAccumulationEvidence (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) where
  learningTechnologyClosed : H.learningTechnology
  skillDepreciationClosed : H.skillDepreciation
  timeAllocationClosed : H.timeAllocation
  schoolingSubsidyClosed : H.schoolingSubsidy
  skillPremiumClosed : H.skillPremium

def HumanCapitalAccumulationClosed (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) : Prop :=
  H.learningTechnology ∧ H.skillDepreciation ∧ H.timeAllocation ∧ H.schoolingSubsidy ∧ H.skillPremium

theorem human_capital_accumulation_closed_from_evidence (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (E : HumanCapitalAccumulationEvidence A H) :
    HumanCapitalAccumulationClosed A H := by
  exact And.intro E.learningTechnologyClosed (And.intro E.skillDepreciationClosed (And.intro E.timeAllocationClosed (And.intro E.schoolingSubsidyClosed E.skillPremiumClosed)))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse