import EconomicsHumanCapitalCanonicalLaneLean.HumanCapitalBridgeLemmas

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness.elim (fun h => False.elim h) id

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse