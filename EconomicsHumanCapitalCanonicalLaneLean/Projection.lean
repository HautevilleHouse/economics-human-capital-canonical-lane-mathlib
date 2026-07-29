import EconomicsHumanCapitalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def humanCapitalProjection : Projection HumanCapitalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem human_capital_projection_idempotent (x : HumanCapitalEndgameState) :
    humanCapitalProjection.toFun (humanCapitalProjection.toFun x) = humanCapitalProjection.toFun x := by
  exact humanCapitalProjection.idempotent x

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse