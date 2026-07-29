import DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure InequalityFunctionalPackage where
  functionSpace : Type u
  norm : Type v
  inequalityConstant : Prop
  boundaryCondition : Prop
  regularityAssumption : Prop

structure InequalityFunctionalEvidence (P : InequalityFunctionalPackage) where
  functionSpaceClosed : P.functionSpace
  normClosed : P.norm
  inequalityConstantClosed : P.inequalityConstant
  boundaryConditionClosed : P.boundaryCondition
  regularityAssumptionClosed : P.regularityAssumption

def InequalityFunctionalClosed (P : InequalityFunctionalPackage) : Prop :=
  P.functionSpace ∧ P.norm ∧ P.inequalityConstant ∧ P.boundaryCondition ∧ P.regularityAssumption

theorem inequality_functional_closed_from_evidence (P : InequalityFunctionalPackage)
    (E : InequalityFunctionalEvidence P) : InequalityFunctionalClosed P := by
  exact And.intro E.functionSpaceClosed
    (And.intro E.normClosed
      (And.intro E.inequalityConstantClosed
        (And.intro E.boundaryConditionClosed E.regularityAssumptionClosed)))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse
