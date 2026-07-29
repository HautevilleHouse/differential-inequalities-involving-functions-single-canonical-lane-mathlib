import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.FunctionInequalityBasic

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure CarlemanEstimatePackage (F : FunctionInequalityPackage) where
  weightFunction : Type u
  weightedInequality : Prop
  exponentialDecay : Prop
  weightPositive : Prop
  weightedInequalityHolds : Prop

structure CarlemanEstimateEvidence {F : FunctionInequalityPackage}
    (C : CarlemanEstimatePackage F) where
  weightPositiveClosed : C.weightPositive
  weightedInequalityHoldsClosed : C.weightedInequalityHolds

def CarlemanEstimateClosed {F : FunctionInequalityPackage}
    (C : CarlemanEstimatePackage F) : Prop :=
  C.weightPositive ∧ C.weightedInequalityHolds

theorem carleman_estimate_closed_from_evidence {F : FunctionInequalityPackage}
    (C : CarlemanEstimatePackage F) (E : CarlemanEstimateEvidence C) :
    CarlemanEstimateClosed C := by
  exact And.intro E.weightPositiveClosed E.weightedInequalityHoldsClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse