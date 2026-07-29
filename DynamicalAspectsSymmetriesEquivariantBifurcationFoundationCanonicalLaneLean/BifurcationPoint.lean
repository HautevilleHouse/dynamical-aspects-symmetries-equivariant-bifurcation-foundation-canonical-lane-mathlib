import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure BifurcationPoint (M : Type) [TopologicalSpace M] (μ : Type) [TopologicalSpace μ] where
  parameterValue : μ
  state : M
  equilibrium : Prop
  symmetryBreaking : Prop

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse