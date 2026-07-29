import DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.InequalityFunctionalPackage

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure SobolevTypeInequalityPackage {P : InequalityFunctionalPackage} where
  sobolevEmbedding : Prop
  poincareInequality : Prop
  gronwallEstimate : Prop
  interpolationInequality : Prop

structure SobolevTypeInequalityEvidence {P : InequalityFunctionalPackage}
    (S : SobolevTypeInequalityPackage P) where
  sobolevEmbeddingClosed : S.sobolevEmbedding
  poincareInequalityClosed : S.poincareInequality
  gronwallEstimateClosed : S.gronwallEstimate
  interpolationInequalityClosed : S.interpolationInequality

def SobolevTypeInequalityClosed {P : InequalityFunctionalPackage}
    (S : SobolevTypeInequalityPackage P) : Prop :=
  S.sobolevEmbedding ∧ S.poincareInequality ∧ S.gronwallEstimate ∧ S.interpolationInequality

theorem sobolev_type_inequality_closed_from_evidence {P : InequalityFunctionalPackage}
    (S : SobolevTypeInequalityPackage P) (E : SobolevTypeInequalityEvidence S) :
    SobolevTypeInequalityClosed S := by
  exact And.intro E.sobolevEmbeddingClosed
    (And.intro E.poincareInequalityClosed
      (And.intro E.gronwallEstimateClosed E.interpolationInequalityClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse
