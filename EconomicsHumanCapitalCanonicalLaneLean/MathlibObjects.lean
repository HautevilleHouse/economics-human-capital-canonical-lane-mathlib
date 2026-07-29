import EconomicsHumanCapitalCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HumanCapitalSpace where
  agentSpace : Type
  commoditySpace : TopologicalSpace agentSpace
  preferenceRelation : agentSpace → agentSpace → Prop
  initialEndowment : agentSpace → ℝ
  equilibriumPrices : Set (agentSpace → ℝ)

structure HumanCapitalAdmittedObject where
  space : HumanCapitalSpace
  equilibriumExists : Prop
  paretoOptimal : Prop
  firstWelfareTheoremHolds : Prop
  secondWelfareTheoremHolds : Prop
  conclusion : equilibriumExists ∧ paretoOptimal ∧ firstWelfareTheoremHolds ∧ secondWelfareTheoremHolds

structure HumanCapitalEndgameState where
  object : HumanCapitalAdmittedObject

def HumanCapitalWitnessClosed (O : HumanCapitalAdmittedObject) : Prop :=
  O.conclusion

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse