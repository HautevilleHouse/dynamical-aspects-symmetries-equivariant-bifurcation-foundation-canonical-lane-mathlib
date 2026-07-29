import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure DynamicalSystem (M : Type) [TopologicalSpace M] where
  stateSpace : Type u
  timeDomain : Type v
  flow : timeDomain → stateSpace → stateSpace
  continuousFlow : Continuous (Function.uncurry flow)
  groupAction : AddMonoid timeDomain
  groupActionCompatibility : ∀ (t s : timeDomain) (x : stateSpace), flow (t + s) x = flow t (flow s x)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse