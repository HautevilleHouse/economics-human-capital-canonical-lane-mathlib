import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure HumanCapitalObject where
  agent : Type u
  skillSet : Type v
  educationLevel : Nat
  experienceYears : Nat
  productivity : Nat
  skillSetNonEmpty : Nonempty skillSet

structure HumanCapitalPackage where
  agentType : Type u
  skillType : Type v
  educationProduction : Prop
  experienceAccumulation : Prop
  productivityFunction : Prop
  humanCapitalStock : Nat -> Prop

structure HumanCapitalEvidence (H : HumanCapitalPackage) where
  educationProductionClosed : H.educationProduction
  experienceAccumulationClosed : H.experienceAccumulation
  productivityFunctionClosed : H.productivityFunction
  stockInitial : H.humanCapitalStock 0

def HumanCapitalClosed (H : HumanCapitalPackage) : Prop :=
  H.educationProduction ∧ H.experienceAccumulation ∧ H.productivityFunction ∧ H.humanCapitalStock 0

theorem human_capital_closed_from_evidence (H : HumanCapitalPackage) (E : HumanCapitalEvidence H) :
    HumanCapitalClosed H := by
  exact And.intro E.educationProductionClosed (And.intro E.experienceAccumulationClosed (And.intro E.productivityFunctionClosed E.stockInitial))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse