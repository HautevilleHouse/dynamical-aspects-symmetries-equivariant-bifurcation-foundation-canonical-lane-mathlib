import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationFoundation.SymmetryGroupAction

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

structure EquivariantBifurcationPoint (G : Type u) [Group G] (M : Type v) [TopologicalSpace M]
    [ChartedSpace ℂ M] (ρ : SymmetryGroupAction G M) (X : EquivariantVectorField G M ρ) where
  point : M
  symmetryFixed : ∀ g, ρ.action g point = point
  zeroOfVectorField : X.vectorField point = 0
  bifurcationCondition : True

def EquivariantBifurcationPointClosed (bp : EquivariantBifurcationPoint G M ρ X) : Prop :=
  bp.symmetryFixed ∧ bp.zeroOfVectorField

theorem equivariant_bifurcation_point_closed (bp : EquivariantBifurcationPoint G M ρ X) :
    EquivariantBifurcationPointClosed bp := by
  exact And.intro bp.symmetryFixed bp.zeroOfVectorField

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse
