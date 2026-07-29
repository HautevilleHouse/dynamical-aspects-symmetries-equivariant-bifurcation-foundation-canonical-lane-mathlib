import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

structure SymmetryGroupAction (G : Type u) [Group G] (M : Type v) [TopologicalSpace M] where
  action : G → M → M
  continuous : ∀ g, Continuous (action g)
  identity : ∀ x, action 1 x = x
  compatibility : ∀ g h x, action (g * h) x = action g (action h x)

structure EquivariantVectorField (G : Type u) [Group G] (M : Type v) [TopologicalSpace M]
    [ChartedSpace ℂ M] (ρ : SymmetryGroupAction G M) where
  vectorField : M → TangentBundle ℂ M
  equivariance : ∀ g x, vectorField (ρ.action g x) = TPointwiseAction.pullback (ρ.action g) (vectorField x)

def SymmetryClosed (ρ : SymmetryGroupAction G M) : Prop := True

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse
