import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure MincerEquation where
  schoolingYears : Prop
  experienceYears : Prop
  experienceSquared : Prop
  logEarnings : Prop
  rateOfReturnToSchooling : Prop
  concaveExperienceProfile : Prop

structure MincerEquationEvidence (M : MincerEquation) where
  schoolingYearsClosed : M.schoolingYears
  experienceYearsClosed : M.experienceYears
  experienceSquaredClosed : M.experienceSquared
  logEarningsClosed : M.logEarnings
  rateOfReturnToSchoolingClosed : M.rateOfReturnToSchooling
  concaveExperienceProfileClosed : M.concaveExperienceProfile

def MincerEquationClosed (M : MincerEquation) : Prop :=
  M.schoolingYears ∧ M.experienceYears ∧ M.experienceSquared ∧
  M.logEarnings ∧ M.rateOfReturnToSchooling ∧ M.concaveExperienceProfile

theorem mincer_equation_closed_from_evidence
    (M : MincerEquation) (E : MincerEquationEvidence M) : MincerEquationClosed M := by
  exact And.intro E.schoolingYearsClosed
    (And.intro E.experienceYearsClosed
      (And.intro E.experienceSquaredClosed
        (And.intro E.logEarningsClosed
          (And.intro E.rateOfReturnToSchoolingClosed E.concaveExperienceProfileClosed))))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse