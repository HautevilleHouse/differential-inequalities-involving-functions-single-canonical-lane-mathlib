import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure SobolevEmbeddingPackage (I : DifferentialInequalityPackage) where
  sobolevInequality : Prop
  morreyInequality : Prop
  gagliardoNirenbergInequality : Prop
  tringerInequality : Prop
  embeddingConstant : Prop

structure SobolevEmbeddingEvidence {I : DifferentialInequalityPackage}
    (S : SobolevEmbeddingPackage I) where
  sobolevInequalityClosed : S.sobolevInequality
  morreyInequalityClosed : S.morreyInequality
  gagliardoNirenbergInequalityClosed : S.gagliardoNirenbergInequality
  tringerInequalityClosed : S.tringerInequality
  embeddingConstantClosed : S.embeddingConstant

def SobolevEmbeddingClosed {I : DifferentialInequalityPackage}
    (S : SobolevEmbeddingPackage I) : Prop :=
  S.sobolevInequality ∧ S.morreyInequality ∧ S.gagliardoNirenbergInequality ∧
  S.tringerInequality ∧ S.embeddingConstant

theorem sobolev_embedding_closed_from_evidence
    {I : DifferentialInequalityPackage} (S : SobolevEmbeddingPackage I)
    (E : SobolevEmbeddingEvidence S) : SobolevEmbeddingClosed S := by
  exact And.intro E.sobolevInequalityClosed
    (And.intro E.morreyInequalityClosed
      (And.intro E.gagliardoNirenbergInequalityClosed
        (And.intro E.tringerInequalityClosed E.embeddingConstantClosed)))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse