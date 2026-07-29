import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean

structure DiffIneqDomain where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiffIneqAdmittedObject where
  domain : DiffIneqDomain
  functionSpace : Type
  inequalityStatement : Prop
  boundaryCondition : Prop
  conclusion : inequalityStatement ∧ boundaryCondition

structure DiffIneqEndgameState where
  object : DiffIneqAdmittedObject

def DiffIneqWitnessClosed (O : DiffIneqAdmittedObject) : Prop :=
  O.inequalityStatement ∧ O.boundaryCondition

end DifferentialInequalitiesInvolvingFunctionsSingleCanonicalLaneLean
end HautevilleHouse