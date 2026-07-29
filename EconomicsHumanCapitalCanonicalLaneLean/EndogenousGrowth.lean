import EconomicsHumanCapitalCanonicalLaneLean.HumanCapitalAccumulation

/-!
# Endogenous Growth Model
Growth driven by human capital accumulation.
-/

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure EndogenousGrowthPackage (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) where
  productionFunction : Prop
  knowledgeSpillover : Prop
  balancedGrowthPath : Prop
  convergenceRate : Prop

structure EndogenousGrowthEvidence (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) where
  productionFunctionClosed : G.productionFunction
  knowledgeSpilloverClosed : G.knowledgeSpillover
  balancedGrowthPathClosed : G.balancedGrowthPath
  convergenceRateClosed : G.convergenceRate

def EndogenousGrowthClosed (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) : Prop :=
  G.productionFunction ∧ G.knowledgeSpillover ∧ G.balancedGrowthPath ∧ G.convergenceRate

theorem endogenous_growth_closed_from_evidence (A : ArrowDebreuPackage UtilityTheoryPackage) (H : HumanCapitalAccumulationPackage A) (G : EndogenousGrowthPackage A H) (E : EndogenousGrowthEvidence A H G) :
    EndogenousGrowthClosed A H G := by
  exact And.intro E.productionFunctionClosed (And.intro E.knowledgeSpilloverClosed (And.intro E.balancedGrowthPathClosed E.convergenceRateClosed))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse