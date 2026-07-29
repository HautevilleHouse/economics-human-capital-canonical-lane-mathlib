import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsHumanCapitalCanonicalLaneLean.HumanCapitalFormation

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure EndogenousGrowthPackage where
  technologySpace : Type u
  physicalCapitalAccumulation : Prop
  innovationRate : Prop
  spilloverEffects : Prop
  balancedGrowthPath : Prop

structure GrowthEvidence (G : EndogenousGrowthPackage) where
  physicalCapitalAccumulationClosed : G.physicalCapitalAccumulation
  innovationRateClosed : G.innovationRate
  spilloverEffectsClosed : G.spilloverEffects
  balancedGrowthPathClosed : G.balancedGrowthPath

def GrowthClosed (G : EndogenousGrowthPackage) : Prop :=
  G.physicalCapitalAccumulation ∧ G.innovationRate ∧
  G.spilloverEffects ∧ G.balancedGrowthPath

theorem growth_closed_from_evidence (G : EndogenousGrowthPackage)
    (E : GrowthEvidence G) : GrowthClosed G := by
  exact And.intro E.physicalCapitalAccumulationClosed
    (And.intro E.innovationRateClosed
      (And.intro E.spilloverEffectsClosed E.balancedGrowthPathClosed))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse
