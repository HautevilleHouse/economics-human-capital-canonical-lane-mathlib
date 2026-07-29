import EconomicsHumanCapitalCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HumanCapitalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse