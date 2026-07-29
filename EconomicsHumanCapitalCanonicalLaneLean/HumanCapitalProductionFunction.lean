import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure HumanCapitalProductionFunction where
  laborInput : Type u
  humanCapitalStock : Type v
  output : Type w
  cobbDouglasForm : Prop
  constantReturnsToScale : Prop
  complementarityElasticity : Prop
  skillPremium : Prop

structure HumanCapitalProductionFunctionEvidence (H : HumanCapitalProductionFunction) where
  cobbDouglasFormClosed : H.cobbDouglasForm
  constantReturnsToScaleClosed : H.constantReturnsToScale
  complementarityElasticityClosed : H.complementarityElasticity
  skillPremiumClosed : H.skillPremium

def HumanCapitalProductionFunctionClosed (H : HumanCapitalProductionFunction) : Prop :=
  H.cobbDouglasForm ∧ H.constantReturnsToScale ∧ H.complementarityElasticity ∧ H.skillPremium

theorem human_capital_production_function_closed_from_evidence
    (H : HumanCapitalProductionFunction) (E : HumanCapitalProductionFunctionEvidence H) :
    HumanCapitalProductionFunctionClosed H := by
  exact And.intro E.cobbDouglasFormClosed
    (And.intro E.constantReturnsToScaleClosed
      (And.intro E.complementarityElasticityClosed E.skillPremiumClosed))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse