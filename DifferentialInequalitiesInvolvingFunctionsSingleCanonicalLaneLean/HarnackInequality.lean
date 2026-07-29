import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure HarnackInequalityPackage (I : DifferentialInequalityPackage) where
  harnackEstimate : Prop
  parabolicHarnack : Prop
  ellipticHarnack : Prop
  sharpConstantExponent : Prop

structure HarnackInequalityEvidence {I : DifferentialInequalityPackage}
    (H : HarnackInequalityPackage I) where
  harnackEstimateClosed : H.harnackEstimate
  parabolicHarnackClosed : H.parabolicHarnack
  ellipticHarnackClosed : H.ellipticHarnack
  sharpConstantExponentClosed : H.sharpConstantExponent

def HarnackInequalityClosed {I : DifferentialInequalityPackage}
    (H : HarnackInequalityPackage I) : Prop :=
  H.harnackEstimate ∧ H.parabolicHarnack ∧ H.ellipticHarnack ∧ H.sharpConstantExponent

theorem harnack_inequality_closed_from_evidence
    {I : DifferentialInequalityPackage} (H : HarnackInequalityPackage I)
    (E : HarnackInequalityEvidence H) : HarnackInequalityClosed H := by
  exact And.intro E.harnackEstimateClosed
    (And.intro E.parabolicHarnackClosed
      (And.intro E.ellipticHarnackClosed E.sharpConstantExponentClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse