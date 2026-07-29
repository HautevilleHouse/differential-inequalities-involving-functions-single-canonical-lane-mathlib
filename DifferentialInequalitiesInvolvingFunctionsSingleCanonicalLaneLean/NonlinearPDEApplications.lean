import DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean.SobolevTypeInequality

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure NonlinearPDEApplicationsPackage {P : InequalityFunctionalPackage}
    {S : SobolevTypeInequalityPackage P} where
  existenceOfSolution : Prop
  uniquenessOfSolution : Prop
  stabilityEstimate : Prop
  regularityGain : Prop

structure NonlinearPDEApplicationsEvidence {P : InequalityFunctionalPackage}
    {S : SobolevTypeInequalityPackage P} (N : NonlinearPDEApplicationsPackage S) where
  existenceOfSolutionClosed : N.existenceOfSolution
  uniquenessOfSolutionClosed : N.uniquenessOfSolution
  stabilityEstimateClosed : N.stabilityEstimate
  regularityGainClosed : N.regularityGain

def NonlinearPDEApplicationsClosed {P : InequalityFunctionalPackage}
    {S : SobolevTypeInequalityPackage P} (N : NonlinearPDEApplicationsPackage S) : Prop :=
  N.existenceOfSolution ∧ N.uniquenessOfSolution ∧ N.stabilityEstimate ∧ N.regularityGain

theorem nonlinear_pde_applications_closed_from_evidence {P : InequalityFunctionalPackage}
    {S : SobolevTypeInequalityPackage P} (N : NonlinearPDEApplicationsPackage S)
    (E : NonlinearPDEApplicationsEvidence N) : NonlinearPDEApplicationsClosed N := by
  exact And.intro E.existenceOfSolutionClosed
    (And.intro E.uniquenessOfSolutionClosed
      (And.intro E.stabilityEstimateClosed E.regularityGainClosed))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse
