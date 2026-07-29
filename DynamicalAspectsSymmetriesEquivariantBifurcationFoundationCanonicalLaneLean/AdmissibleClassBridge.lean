import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure DynamicalAdmittedObject where
  system : DynamicalSystem (FiniteDimensionalVectorSpace ℝ 3)
  symmetryGroup : Type
  symmetryAction : MulAction symmetryGroup system.stateSpace
  bifurcationParameterSpace : Type
  equivariantBifurcationSystem : EquivariantBifurcationSystem symmetryGroup system.stateSpace system
  normalForm : NormalForm symmetryGroup (TangentSpace system.stateSpace (system.flow 0 0))
  centreManifold : CentreManifold system.stateSpace bifurcationParameterSpace system
  conclusion : Prop

structure DynamicalAdmissibleClass where
  object : DynamicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse