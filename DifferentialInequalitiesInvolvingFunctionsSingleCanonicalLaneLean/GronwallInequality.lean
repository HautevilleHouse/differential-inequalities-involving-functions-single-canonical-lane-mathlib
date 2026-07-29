import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure GronwallInequalityPackage where
  interval : Type u
  functionPair : Type v
  differentialInequality : Prop
  exponentialBound : Prop
  uniquenessOfSolution : Prop

structure GronwallInequalityEvidence (G : GronwallInequalityPackage) where
  differentialInequalityClosed : G.differentialInequality
  exponentialBoundClosed : G.exponentialBound
  uniquenessOfSolutionClosed : G.uniquenessOfSolution

def GronwallInequalityClosed (G : GronwallInequalityPackage) : Prop :=
  G.differentialInequality ∧ G.exponentialBound ∧ G.uniquenessOfSolution

theorem gronwall_inequality_closed_from_evidence (G : GronwallInequalityPackage)
    (E : GronwallInequalityEvidence G) : GronwallInequalityClosed G := by
  exact And.intro E.differentialInequalityClosed
    (And.intro E.exponentialBoundClosed E.uniquenessOfSolutionClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse