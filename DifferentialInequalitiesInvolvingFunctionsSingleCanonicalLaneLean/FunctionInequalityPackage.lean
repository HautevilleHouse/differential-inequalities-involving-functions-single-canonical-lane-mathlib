import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure FunctionInequalityPackage where
  domain : Type u
  norm : domain → ℝ
  inequality : domain → domain → Prop
  continuityCondition : Prop
  growthCondition : Prop
  inequalityClosed : inequality

def FunctionInequalityClosed (P : FunctionInequalityPackage) : Prop :=
  P.continuityCondition ∧ P.growthCondition ∧ P.inequalityClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse