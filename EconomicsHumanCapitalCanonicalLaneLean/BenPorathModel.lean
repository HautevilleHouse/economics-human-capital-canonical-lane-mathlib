import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure BenPorathModelPackage where
  timeAllocation : Nat -> Prop
  foregoneEarningsCost : Prop
  humanCapitalProduction : Prop
  optimalSchoolingYears : Nat -> Prop
  postSchoolingInvestment : Prop

structure BenPorathModelEvidence (B : BenPorathModelPackage) where
  timeAllocationClosed : B.timeAllocation 16
  foregoneEarningsCostClosed : B.foregoneEarningsCost
  humanCapitalProductionClosed : B.humanCapitalProduction
  optimalSchoolingYearsClosed : B.optimalSchoolingYears 12
  postSchoolingInvestmentClosed : B.postSchoolingInvestment

def BenPorathModelClosed (B : BenPorathModelPackage) : Prop :=
  B.timeAllocation 16 ∧ B.foregoneEarningsCost ∧ B.humanCapitalProduction ∧ B.optimalSchoolingYears 12 ∧ B.postSchoolingInvestment

theorem ben_porath_model_closed_from_evidence (B : BenPorathModelPackage) (E : BenPorathModelEvidence B) :
    BenPorathModelClosed B := by
  exact And.intro E.timeAllocationClosed (And.intro E.foregoneEarningsCostClosed (And.intro E.humanCapitalProductionClosed (And.intro E.optimalSchoolingYearsClosed E.postSchoolingInvestmentClosed)))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse