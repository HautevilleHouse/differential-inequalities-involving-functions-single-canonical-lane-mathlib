import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure FunctionInequalityPackage where
  singleFunction : Type u
  domain : Type v
  inequalityRelation : Prop
  coefficient : Type w
  boundConstant : Type x
  functionDefined : Prop
  domainPrefixed : Prop
  inequalityHolds : Prop
  coefficientPositive : Prop

structure FunctionInequalityEvidence (F : FunctionInequalityPackage) where
  functionDefinedClosed : F.functionDefined
  domainPrefixedClosed : F.domainPrefixed
  inequalityHoldsClosed : F.inequalityHolds
  coefficientPositiveClosed : F.coefficientPositive

def FunctionInequalityClosed (F : FunctionInequalityPackage) : Prop :=
  F.functionDefined ∧ F.domainPrefixed ∧ F.inequalityHolds ∧ F.coefficientPositive

theorem function_inequality_closed_from_evidence (F : FunctionInequalityPackage)
    (E : FunctionInequalityEvidence F) : FunctionInequalityClosed F := by
  exact And.intro E.functionDefinedClosed
    (And.intro E.domainPrefixedClosed
      (And.intro E.inequalityHoldsClosed E.coefficientPositiveClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse