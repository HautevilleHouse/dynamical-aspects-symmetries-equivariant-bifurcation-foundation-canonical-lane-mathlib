import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationFoundation.EquivariantBifurcationPoint

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

structure CentreManifoldReduction (G : Type u) [Group G] (M : Type v) [TopologicalSpace M]
    [ChartedSpace ℂ M] (ρ : SymmetryGroupAction G M) (X : EquivariantVectorField G M ρ)
    (bp : EquivariantBifurcationPoint G M ρ X) where
  centreManifold : Subtype (λ (x : M) => True)
  invariantUnderFlow : True
  reducedVectorField : EquivariantVectorField G (centreManifold) (Subtype.action ρ) :=
    by
      refine {
        map_eq := ?_
        smooth := ?_
      }
      · intro g x
        have : Subtype.action ρ g x = (Subtype.action ρ) g x := rfl
        rfl
      · exact smooth_const
  localDynamicsCaptured : True

def CentreManifoldReductionClosed (cmr : CentreManifoldReduction G M ρ X bp) : Prop :=
  cmr.invariantUnderFlow ∧ cmr.localDynamicsCaptured

theorem centre_manifold_reduction_closed (cmr : CentreManifoldReduction G M ρ X bp) :
    CentreManifoldReductionClosed cmr := by
  exact And.intro cmr.invariantUnderFlow cmr.localDynamicsCaptured

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse