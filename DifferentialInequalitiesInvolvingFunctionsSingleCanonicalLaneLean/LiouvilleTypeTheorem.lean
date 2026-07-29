import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.Deriv

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure LiouvilleTypeTheoremPackage where
  functionDomain : Type u
  growthCondition : Prop
  subharmonicCondition : Prop
  constantConclusion : Prop

structure LiouvilleTypeTheoremEvidence (L : LiouvilleTypeTheoremPackage) where
  growthConditionClosed : L.growthCondition
  subharmonicConditionClosed : L.subharmonicCondition
  constantConclusionClosed : L.constantConclusion

def LiouvilleTypeTheoremClosed (L : LiouvilleTypeTheoremPackage) : Prop :=
  L.growthCondition ∧ L.subharmonicCondition ∧ L.constantConclusion

theorem liouville_type_theorem_closed_from_evidence (L : LiouvilleTypeTheoremPackage)
    (E : LiouvilleTypeTheoremEvidence L) : LiouvilleTypeTheoremClosed L := by
  exact And.intro E.growthConditionClosed
    (And.intro E.subharmonicConditionClosed E.constantConclusionClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse