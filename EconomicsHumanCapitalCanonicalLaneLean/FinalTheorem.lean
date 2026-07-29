import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsHumanCapitalCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EconomicsHumanCapitalCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

def ConstrainedEconomicsHumanCapitalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_human_capital_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsHumanCapitalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse
