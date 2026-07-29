import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure LogSobolevInequalityPackage where
  domainType : Type
  logConstant : ℝ
  inequalityHolds : Prop
  grossLogarithmicConstant : Prop

structure LogSobolevInequalityEvidence (L : LogSobolevInequalityPackage) where
  inequalityHoldsClosed : L.inequalityHolds
  grossLogarithmicConstantClosed : L.grossLogarithmicConstant

def LogSobolevInequalityClosed (L : LogSobolevInequalityPackage) : Prop :=
  L.inequalityHolds ∧ L.grossLogarithmicConstant

theorem log_sobolev_inequality_closed_from_evidence
    (L : LogSobolevInequalityPackage) (E : LogSobolevInequalityEvidence L) :
    LogSobolevInequalityClosed L := by
  exact And.intro E.inequalityHoldsClosed E.grossLogarithmicConstantClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse