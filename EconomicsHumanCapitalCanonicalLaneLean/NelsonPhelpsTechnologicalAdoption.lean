import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure NelsonPhelpsTechnologicalAdoption where
  humanCapitalLevel : Prop
  technologyGap : Prop
  adoptionRate : Prop
  catchUpSpeed : Prop
  productivityGrowthEquation : Prop

structure NelsonPhelpsTechnologicalAdoptionEvidence (N : NelsonPhelpsTechnologicalAdoption) where
  humanCapitalLevelClosed : N.humanCapitalLevel
  technologyGapClosed : N.technologyGap
  adoptionRateClosed : N.adoptionRate
  catchUpSpeedClosed : N.catchUpSpeed
  productivityGrowthEquationClosed : N.productivityGrowthEquation

def NelsonPhelpsTechnologicalAdoptionClosed (N : NelsonPhelpsTechnologicalAdoption) : Prop :=
  N.humanCapitalLevel ∧ N.technologyGap ∧ N.adoptionRate ∧
  N.catchUpSpeed ∧ N.productivityGrowthEquation

theorem nelson_phelps_technological_adoption_closed_from_evidence
    (N : NelsonPhelpsTechnologicalAdoption) (E : NelsonPhelpsTechnologicalAdoptionEvidence N) :
    NelsonPhelpsTechnologicalAdoptionClosed N := by
  exact And.intro E.humanCapitalLevelClosed
    (And.intro E.technologyGapClosed
      (And.intro E.adoptionRateClosed
        (And.intro E.catchUpSpeedClosed E.productivityGrowthEquationClosed)))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse