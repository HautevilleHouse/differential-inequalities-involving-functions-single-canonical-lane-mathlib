import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.FunctionInequalityBasic

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure SobolevInequalityPackage (F : FunctionInequalityPackage) where
  exponentP : Type u
  exponentQ : Type v
  sobolevEmbedding : Prop
  sobolevInequality : Prop
  sharpConstant : Type w
  constantOptimal : Prop

structure SobolevInequalityEvidence {F : FunctionInequalityPackage}
    (S : SobolevInequalityPackage F) where
  sobolevInequalityClosed : S.sobolevInequality
  constantOptimalClosed : S.constantOptimal

def SobolevInequalityClosed {F : FunctionInequalityPackage}
    (S : SobolevInequalityPackage F) : Prop :=
  S.sobolevInequality ∧ S.constantOptimal

theorem sobolev_inequality_closed_from_evidence {F : FunctionInequalityPackage}
    (S : SobolevInequalityPackage F) (E : SobolevInequalityEvidence S) :
    SobolevInequalityClosed S := by
  exact And.intro E.sobolevInequalityClosed E.constantOptimalClosed

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse