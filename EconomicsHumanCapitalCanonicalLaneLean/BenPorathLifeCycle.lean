import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure BenPorathLifeCycle where
  initialEndowment : Prop
  timeAllocationBetweenWorkAndEducation : Prop
  humanCapitalAccumulationEquation : Prop
  earningsProfile : Prop
  optimalSchoolingDecision : Prop

structure BenPorathLifeCycleEvidence (B : BenPorathLifeCycle) where
  initialEndowmentClosed : B.initialEndowment
  timeAllocationClosed : B.timeAllocationBetweenWorkAndEducation
  accumulationEquationClosed : B.humanCapitalAccumulationEquation
  earningsProfileClosed : B.earningsProfile
  optimalSchoolingClosed : B.optimalSchoolingDecision

def BenPorathLifeCycleClosed (B : BenPorathLifeCycle) : Prop :=
  B.initialEndowment ∧ B.timeAllocationBetweenWorkAndEducation ∧
  B.humanCapitalAccumulationEquation ∧ B.earningsProfile ∧ B.optimalSchoolingDecision

theorem ben_porath_life_cycle_closed_from_evidence
    (B : BenPorathLifeCycle) (E : BenPorathLifeCycleEvidence B) :
    BenPorathLifeCycleClosed B := by
  exact And.intro E.initialEndowmentClosed
    (And.intro E.timeAllocationClosed
      (And.intro E.accumulationEquationClosed
        (And.intro E.earningsProfileClosed E.optimalSchoolingClosed)))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse