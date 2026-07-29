import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure IsoperimetricInequalityPackage where
  ambientSpace : Type
  isoperimetricConstant : ℝ
  inequalityHolds : Prop
  symmetricSetAchieves : Prop

structure IsoperimetricInequalityEvidence (I : IsoperimetricInequalityPackage) where
  inequalityHoldsClosed : I.inequalityHolds
  symmetricSetAchievesClosed : I.symmetricSetAchieves

def IsoperimetricInequalityClosed (I : IsoperimetricInequalityPackage) : Prop :=
  I.inequalityHolds ∧ I.symmetricSetAchieves

theorem isoperimetric_inequality_closed_from_evidence
    (I : IsoperimetricInequalityPackage) (E : IsoperimetricInequalityEvidence I) :
    IsoperimetricInequalityClosed I := by
  exact And.intro E.inequalityHoldsClosed E.symmetricSetAchievesClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse