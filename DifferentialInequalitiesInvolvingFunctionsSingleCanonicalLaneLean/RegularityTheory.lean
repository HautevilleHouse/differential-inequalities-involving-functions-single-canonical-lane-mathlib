import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure RegularityTheoryPackage where
  sobolevSpace : Type u
  holderContinuity : Prop
  bootstrapRegularity : Prop
  schauderEstimates : Prop

structure RegularityTheoryEvidence (R : RegularityTheoryPackage) where
  holderContinuityClosed : R.holderContinuity
  bootstrapRegularityClosed : R.bootstrapRegularity
  schauderEstimatesClosed : R.schauderEstimates

def RegularityTheoryClosed (R : RegularityTheoryPackage) : Prop :=
  R.holderContinuity ∧ R.bootstrapRegularity ∧ R.schauderEstimates

theorem regularity_theory_closed_from_evidence (R : RegularityTheoryPackage)
    (E : RegularityTheoryEvidence R) : RegularityTheoryClosed R := by
  exact And.intro E.holderContinuityClosed
    (And.intro E.bootstrapRegularityClosed E.schauderEstimatesClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse