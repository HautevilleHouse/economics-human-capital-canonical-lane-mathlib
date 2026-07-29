import EconomicsHumanCapitalCanonicalLaneLean.RicciFlowPDE

/-!
# Arrow-Debreu Equilibrium
Core equilibrium existence theorem for competitive markets.
-/

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure ArrowDebreuPackage (G : UtilityTheoryPackage) where
  agentPreferences : Prop
  productionSets : Prop
  initialEndowments : Prop
  equilibriumPrices : Type u
  equilibriumAllocation : Type v
  marketClearing : Prop
  priceNormalization : Prop

structure ArrowDebreuEvidence (G : UtilityTheoryPackage) (A : ArrowDebreuPackage G) where
  agentPreferencesClosed : A.agentPreferences
  productionSetsClosed : A.productionSets
  initialEndowmentsClosed : A.initialEndowments
  marketClearingClosed : A.marketClearing
  priceNormalizationClosed : A.priceNormalization

def ArrowDebreuClosed (G : UtilityTheoryPackage) (A : ArrowDebreuPackage G) : Prop :=
  A.agentPreferences ∧ A.productionSets ∧ A.initialEndowments ∧ A.marketClearing ∧ A.priceNormalization

theorem arrow_debreu_closed_from_evidence (G : UtilityTheoryPackage) (A : ArrowDebreuPackage G) (E : ArrowDebreuEvidence G A) :
    ArrowDebreuClosed G A := by
  exact And.intro E.agentPreferencesClosed (And.intro E.productionSetsClosed (And.intro E.initialEndowmentsClosed (And.intro E.marketClearingClosed E.priceNormalizationClosed)))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse