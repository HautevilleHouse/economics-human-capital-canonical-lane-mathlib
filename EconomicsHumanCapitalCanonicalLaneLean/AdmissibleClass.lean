import EconomicsHumanCapitalCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure AdmissibleClass where
  object : HumanCapitalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HumanCapitalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse