import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure SignalingModelPackage where
  workerType : Type u
  educationSignal : Type v
  productivityType : Type w
  signalCost : (workerType -> educationSignal -> Nat) -> Prop
  employerBelief : Prop
  separatingEquilibrium : Prop
  poolingEquilibrium : Prop

structure SignalingModelEvidence (S : SignalingModelPackage) where
  signalCostClosed : S.signalCost (fun _ _ => 1)
  employerBeliefClosed : S.employerBelief
  separatingOrPooling : S.separatingEquilibrium ∨ S.poolingEquilibrium

def SignalingModelClosed (S : SignalingModelPackage) : Prop :=
  S.signalCost (fun _ _ => 1) ∧ S.employerBelief ∧ (S.separatingEquilibrium ∨ S.poolingEquilibrium)

theorem signaling_model_closed_from_evidence (S : SignalingModelPackage) (E : SignalingModelEvidence S) :
    SignalingModelClosed S := by
  exact And.intro E.signalCostClosed (And.intro E.employerBeliefClosed E.separatingOrPooling)

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse