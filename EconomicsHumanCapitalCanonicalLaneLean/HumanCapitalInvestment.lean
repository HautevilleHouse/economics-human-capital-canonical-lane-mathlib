import EconomicsHumanCapitalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure HumanCapitalInvestmentModel (A : AdmissibleClass) where
  skillSet : Type u
  investmentLevel : Type v
  productionFunction : investmentLevel → skillSet → ℝ
  marginalReturn : investmentLevel → ℝ
  optimalCondition : ∃ (inv : investmentLevel) (sk : skillSet), productionFunction inv sk = marginalReturn inv

structure InvestmentEvidence (A : AdmissibleClass) (M : HumanCapitalInvestmentModel A) where
  optimalClosed : M.optimalCondition

def InvestmentBridgeClosed (A : AdmissibleClass) (M : HumanCapitalInvestmentModel A) : Prop :=
  M.optimalCondition

theorem investment_bridge_closed_from_evidence (A : AdmissibleClass) (M : HumanCapitalInvestmentModel A) (E : InvestmentEvidence A M) :
    InvestmentBridgeClosed A M :=
  E.optimalClosed

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse