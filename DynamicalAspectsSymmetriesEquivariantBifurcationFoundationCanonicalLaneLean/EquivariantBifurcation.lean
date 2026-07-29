import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure EquivariantBifurcationSystem (G : Type) [TopologicalSpace G] [Group G] (M : Type) [TopologicalSpace M] [MulAction G M] (D : DynamicalSystem M) where
  symmetryAction : MulAction G M
  flowCommutesWithSymmetry : ∀ (g : G) (t : D.timeDomain) (x : M), D.flow t (g • x) = g • (D.flow t x)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse