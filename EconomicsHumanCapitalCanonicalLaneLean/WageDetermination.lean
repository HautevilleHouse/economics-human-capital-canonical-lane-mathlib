import EconomicsHumanCapitalCanonicalLaneLean.EndogenousGrowth

/-!
# Wage Determination
Skill premium and wage setting in labor markets.
-/

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure WageDeterminationPackage (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) where
  laborDemand : Prop
  laborSupply : Prop
  skillPremiumEquation : Prop
  minimumWage : Prop
  unionBargaining : Prop

structure WageDeterminationEvidence (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) (W : WageDeterminationPackage A H G) where
  laborDemandClosed : W.laborDemand
  laborSupplyClosed : W.laborSupply
  skillPremiumEquationClosed : W.skillPremiumEquation
  minimumWageClosed : W.minimumWage
  unionBargainingClosed : W.unionBargaining

def WageDeterminationClosed (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) (W : WageDeterminationPackage A H G) : Prop :=
  W.laborDemand ∧ W.laborSupply ∧ W.skillPremiumEquation ∧ W.minimumWage ∧ W.unionBargaining

theorem wage_determination_closed_from_evidence (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) (W : WageDeterminationPackage A H G) (E : WageDeterminationEvidence A H G W) :
    WageDeterminationClosed A H G W := by
  exact And.intro E.laborDemandClosed (And.intro E.laborSupplyClosed (And.intro E.skillPremiumEquationClosed (And.intro E.minimumWageClosed E.unionBargainingClosed)))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse