import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure MoserIterationPackage (I : DifferentialInequalityPackage) where
  iterationScheme : Prop
  energyEstimate : Prop
  localBounds : Prop
  regularizationEffect : Prop
  pointwiseBound : Prop

structure MoserIterationEvidence {I : DifferentialInequalityPackage}
    (M : MoserIterationPackage I) where
  iterationSchemeClosed : M.iterationScheme
  energyEstimateClosed : M.energyEstimate
  localBoundsClosed : M.localBounds
  regularizationEffectClosed : M.regularizationEffect
  pointwiseBoundClosed : M.pointwiseBound

def MoserIterationClosed {I : DifferentialInequalityPackage}
    (M : MoserIterationPackage I) : Prop :=
  M.iterationScheme ∧ M.energyEstimate ∧ M.localBounds ∧
  M.regularizationEffect ∧ M.pointwiseBound

theorem moser_iteration_closed_from_evidence
    {I : DifferentialInequalityPackage} (M : MoserIterationPackage I)
    (E : MoserIterationEvidence M) : MoserIterationClosed M := by
  exact And.intro E.iterationSchemeClosed
    (And.intro E.energyEstimateClosed
      (And.intro E.localBoundsClosed
        (And.intro E.regularizationEffectClosed E.pointwiseBoundClosed)))

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse