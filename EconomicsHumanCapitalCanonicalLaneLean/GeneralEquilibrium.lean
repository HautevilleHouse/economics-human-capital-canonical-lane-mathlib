import EconomicsHumanCapitalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure ArrowDebreuEquilibrium (A : AdmissibleClass) where
  commoditySpace : Type u
  priceVector : commoditySpace → ℝ
  endowment : commoditySpace
  agentSet : Type v
  preferenceProfile : agentSet → (commoditySpace → ℝ) → Prop
  excessDemand : commoditySpace → ℝ
  marketClearance : ∀ p : commoditySpace → ℝ, excessDemand p = 0
  equilibriumExistence : ∃ p : commoditySpace → ℝ, excessDemand p = 0 ∧ ∀ (i : agentSet), preferenceProfile i p

structure EquilibriumEvidence (A : AdmissibleClass) (E : ArrowDebreuEquilibrium A) where
  marketClearanceClosed : E.marketClearance
  existenceClosed : E.equilibriumExistence

def EquilibriumBridgeClosed (A : AdmissibleClass) (E : ArrowDebreuEquilibrium A) : Prop :=
  E.marketClearance ∧ E.equilibriumExistence

theorem equilibrium_bridge_closed_from_evidence (A : AdmissibleClass) (E : ArrowDebreuEquilibrium A) (Ev : EquilibriumEvidence A E) :
    EquilibriumBridgeClosed A E :=
  And.intro Ev.marketClearanceClosed Ev.existenceClosed

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse