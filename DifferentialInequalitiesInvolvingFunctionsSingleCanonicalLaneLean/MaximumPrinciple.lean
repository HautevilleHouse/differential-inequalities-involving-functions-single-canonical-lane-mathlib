import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure MaximumPrinciplePackage where
  functionSpace : Type u
  ellipticOperator : Type v
  interiorMaximum : Prop
  boundaryMaximum : Prop
  strongMaximum : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  interiorMaximumClosed : M.interiorMaximum
  boundaryMaximumClosed : M.boundaryMaximum
  strongMaximumClosed : M.strongMaximum

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.interiorMaximum ∧ M.boundaryMaximum ∧ M.strongMaximum

theorem maximum_principle_closed_from_evidence (M : MaximumPrinciplePackage)
    (E : MaximumPrincipleEvidence M) : MaximumPrincipleClosed M := by
  exact And.intro E.interiorMaximumClosed
    (And.intro E.boundaryMaximumClosed E.strongMaximumClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse