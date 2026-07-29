import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsHumanCapitalCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  stateSpace : Type v
  stochasticDiscountFactor : Prop
  arbitrageFree : Prop
  riskNeutralValuation : Prop
  equilibriumPrices : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  stochasticDiscountFactorClosed : A.stochasticDiscountFactor
  arbitrageFreeClosed : A.arbitrageFree
  riskNeutralValuationClosed : A.riskNeutralValuation
  equilibriumPricesClosed : A.equilibriumPrices

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.stochasticDiscountFactor ∧ A.arbitrageFree ∧
  A.riskNeutralValuation ∧ A.equilibriumPrices

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.stochasticDiscountFactorClosed
    (And.intro E.arbitrageFreeClosed
      (And.intro E.riskNeutralValuationClosed E.equilibriumPricesClosed))

end EconomicsHumanCapitalCanonicalLaneLean
end HautevilleHouse
