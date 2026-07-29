import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.FunctionInequalityBasic

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure GagliardoNirenbergInequalityPackage (F : FunctionInequalityPackage) where
  interpolationExponents : Type u
  interpolationInequality : Prop
  derivativeOrder : Type v
  lpNorm : Type w
  inequalityHolds : Prop

structure GagliardoNirenbergInequalityEvidence {F : FunctionInequalityPackage}
    (G : GagliardoNirenbergInequalityPackage F) where
  inequalityHoldsClosed : G.inequalityHolds

def GagliardoNirenbergInequalityClosed {F : FunctionInequalityPackage}
    (G : GagliardoNirenbergInequalityPackage F) : Prop :=
  G.inequalityHolds

theorem gagliardo_nirenberg_inequality_closed_from_evidence {F : FunctionInequalityPackage}
    (G : GagliardoNirenbergInequalityPackage F)
    (E : GagliardoNirenbergInequalityEvidence G) :
    GagliardoNirenbergInequalityClosed G := by
  exact E.inequalityHoldsClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse