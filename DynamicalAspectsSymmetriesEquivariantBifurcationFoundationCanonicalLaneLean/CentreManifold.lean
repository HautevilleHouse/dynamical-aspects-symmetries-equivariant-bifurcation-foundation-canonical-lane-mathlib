import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure CentreManifold (M : Type) [TopologicalSpace M] [ChartedSpace ℝ M] (μ : Type) [TopologicalSpace μ] (D : DynamicalSystem M) where
  bifurcationPoint : BifurcationPoint M μ
  centreSubspace : Submodule ℝ (TangentSpace M (bifurcationPoint.state))
  centreManifoldEmbedding : M → M
  reductionDynamics : DynamicalSystem (Subtype fun x : M => x ∈ centreSubspace)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse