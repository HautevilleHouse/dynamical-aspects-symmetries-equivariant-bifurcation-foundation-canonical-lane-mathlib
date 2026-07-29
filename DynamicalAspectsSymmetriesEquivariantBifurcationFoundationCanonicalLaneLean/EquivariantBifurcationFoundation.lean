import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure EquivariantBifurcationAdmissibleData where
  ambientDynamicalSystem : Type u
  symmetryGroup : Type v
  equivariantVectorField : Type w
  groupAction : symmetryGroup → ambientDynamicalSystem → ambientDynamicalSystem
  vectorFieldEquivariant : Prop
  bifurcationParameterSpace : Type x
  steadyStateFamily : bifurcationParameterSpace → ambientDynamicalSystem
  isotropySubgroup : Prop
  centerManifoldReduction : Prop
  lyapunovSchmidtReduction : Prop
  bifurcationEquation : Prop

structure EquivariantBifurcationBridgeData (A : AdmissibleClass) where
  admissibleObject : A.object
  parameterValue : bifurcationParameterSpace
  symmetryBreaking : Prop
  bifurcationDirection : Prop
  equivariantBifurcationClosed : Prop

def EquivariantBifurcationClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem equivariant_bifurcation_bridge_property (A : AdmissibleClass) :
    EquivariantBifurcationClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
