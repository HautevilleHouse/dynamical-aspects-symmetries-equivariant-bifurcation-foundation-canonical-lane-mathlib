import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationFoundation.StabilityAndBranching

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

def ConstrainedEquivariantBifurcationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_equivariant_bifurcation_endgame (A : AdmissibleClass) :
    ConstrainedEquivariantBifurcationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse
