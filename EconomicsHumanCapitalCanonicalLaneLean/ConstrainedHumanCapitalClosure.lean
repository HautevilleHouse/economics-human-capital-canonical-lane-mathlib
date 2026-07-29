import EconomicsHumanCapitalCanonicalLaneLean.HumanCapitalGateLemmas

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

def ConstrainedHumanCapitalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_human_capital_endgame (A : AdmissibleClass) :
    ConstrainedHumanCapitalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse