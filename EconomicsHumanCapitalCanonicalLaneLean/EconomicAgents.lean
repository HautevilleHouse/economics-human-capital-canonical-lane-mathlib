import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure EconomicAgent where
  consumptionSet : Type u
  preferenceRelation : Type v
  initialEndowment : Type w
  rationality : Prop
  rationalityTerm : rationality

structure EconomicAgentEvidence (A : EconomicAgent) where
  rationalityClosed : A.rationality
  consumptionSetNonempty : Nonempty A.consumptionSet

def EconomicAgentClosed (A : EconomicAgent) : Prop :=
  A.rationality

theorem economic_agent_closed_from_evidence (A : EconomicAgent)
    (E : EconomicAgentEvidence A) : EconomicAgentClosed A := by
  exact E.rationalityClosed

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse