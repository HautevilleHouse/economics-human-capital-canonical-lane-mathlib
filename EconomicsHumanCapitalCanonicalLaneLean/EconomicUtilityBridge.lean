import EconomicsHumanCapitalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure UtilityRepresentation (A : AdmissibleClass) where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  utilityFunction : consumptionSet → ℝ
  representationCondition : ∀ x y, preferenceRelation x y ↔ utilityFunction x ≥ utilityFunction y
  continuity : Prop

structure UtilityEvidence (A : AdmissibleClass) (U : UtilityRepresentation A) where
  representationClosed : U.representationCondition
  continuityClosed : U.continuity

def UtilityBridgeClosed (A : AdmissibleClass) (U : UtilityRepresentation A) : Prop :=
  U.representationCondition ∧ U.continuity

theorem utility_bridge_closed_from_evidence (A : AdmissibleClass) (U : UtilityRepresentation A) (E : UtilityEvidence A U) :
    UtilityBridgeClosed A U :=
  And.intro E.representationClosed E.continuityClosed

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse