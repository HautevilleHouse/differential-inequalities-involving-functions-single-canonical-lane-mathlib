import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure ComparisonPrinciplePackage where
  subSolution : Type u → Type v
  superSolution : Type u → Type v
  comparisonHolds : Prop
  uniquenessGuarantee : Prop
  comparisonHoldsClosed : comparisonHolds

def ComparisonPrincipleClosed (C : ComparisonPrinciplePackage) : Prop :=
  C.comparisonHolds ∧ C.uniquenessGuarantee

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse