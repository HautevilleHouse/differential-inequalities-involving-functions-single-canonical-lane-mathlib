import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.FunctionInequalityBasic

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure MosersHarnackInequalityPackage (F : FunctionInequalityPackage) where
  ellipticOperator : Type u
  harnackConstant : Type v
  positivity : Prop
  inequalityOnDomain : Prop
  constantFinite : Prop

structure MosersHarnackInequalityEvidence {F : FunctionInequalityPackage}
    (M : MosersHarnackInequalityPackage F) where
  positivityClosed : M.positivity
  inequalityOnDomainClosed : M.inequalityOnDomain
  constantFiniteClosed : M.constantFinite

def MosersHarnackInequalityClosed {F : FunctionInequalityPackage}
    (M : MosersHarnackInequalityPackage F) : Prop :=
  M.positivity ∧ M.inequalityOnDomain ∧ M.constantFinite

theorem mosers_harnack_inequality_closed_from_evidence {F : FunctionInequalityPackage}
    (M : MosersHarnackInequalityPackage F)
    (E : MosersHarnackInequalityEvidence M) :
    MosersHarnackInequalityClosed M := by
  exact And.intro E.positivityClosed
    (And.intro E.inequalityOnDomainClosed E.constantFiniteClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse