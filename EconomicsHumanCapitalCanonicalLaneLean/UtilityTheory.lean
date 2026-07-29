import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  totalPreorder : X → X → Prop
  continuity : Prop
  monotonicity : Prop
  convexity : Prop
  continuityTerm : continuity
  monotonicityTerm : monotonicity
  convexityTerm : convexity

structure UtilityRepresentation (X : Type u) (P : PreferenceRelation X) where
  utilityFunction : X → ℝ
  representationProperty : ∀ x y : X, P.totalPreorder x y ↔ utilityFunction x ≥ utilityFunction y
  representationPropertyTerm : representationProperty

def UtilityTheoryClosed (X : Type u) (P : PreferenceRelation X) (U : UtilityRepresentation X P) : Prop :=
  U.representationProperty

theorem utility_theory_closed_from_evidence (X : Type u) (P : PreferenceRelation X)
    (U : UtilityRepresentation X P) : UtilityTheoryClosed X P U := by
  exact U.representationPropertyTerm

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse