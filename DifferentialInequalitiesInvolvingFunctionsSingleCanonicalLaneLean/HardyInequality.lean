import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.FunctionInequalityBasic

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure HardyInequalityPackage (F : FunctionInequalityPackage) where
  dimensionThree : Prop
  distanceFunction : Type u
  singularityAtOrigin : Prop
  criticalHardyInequality : Prop
  bestConstant : Type w
  optimalConstantComputed : Prop

structure HardyInequalityEvidence {F : FunctionInequalityPackage}
    (H : HardyInequalityPackage F) where
  criticalHardyInequalityClosed : H.criticalHardyInequality
  optimalConstantComputedClosed : H.optimalConstantComputed

def HardyInequalityClosed {F : FunctionInequalityPackage}
    (H : HardyInequalityPackage F) : Prop :=
  H.criticalHardyInequality ∧ H.optimalConstantComputed

theorem hardy_inequality_closed_from_evidence {F : FunctionInequalityPackage}
    (H : HardyInequalityPackage F) (E : HardyInequalityEvidence H) :
    HardyInequalityClosed H := by
  exact And.intro E.criticalHardyInequalityClosed E.optimalConstantComputedClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse