import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure NormalForm (G : Type) [TopologicalSpace G] [Group G] (V : Type) [TopologicalSpace V] [AddCommGroup V] [Module ℝ V] [MulAction G V] where
  representation : Representation G V
  equivariantPolynomialMap : V → V
  truncatedAtOrder : ℕ
  symmetryCompatibility : ∀ (g : G) (x : V), equivariantPolynomialMap (g • x) = g • (equivariantPolynomialMap x)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse