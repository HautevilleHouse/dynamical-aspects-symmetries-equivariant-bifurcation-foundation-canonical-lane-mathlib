import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure EquivariantDynamicalSystem (G : Type u) [Group G] (M : Type v) [TopologicalSpace M] [SmoothManifold M] where
  phaseSpace : M
  groupAction : G → M → M
  continuousAction : Prop
  smoothAction : Prop
  vectorField : M → TM
  equivariant : ∀ g : G, ∀ x : M, vectorField (groupAction g x) = (groupAction g)⁎ (vectorField x)

structure EquivariantDynamicalSystemEvidence {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] (S : EquivariantDynamicalSystem G M) where
  continuousActionClosed : S.continuousAction
  smoothActionClosed : S.smoothAction
  equivariantClosed : S.equivariant

def EquivariantDynamicalSystemClosed {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] (S : EquivariantDynamicalSystem G M) : Prop :=
  S.continuousAction ∧ S.smoothAction ∧ S.equivariant

theorem equivariant_dynamical_system_closed_from_evidence {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] (S : EquivariantDynamicalSystem G M) (E : EquivariantDynamicalSystemEvidence S) : EquivariantDynamicalSystemClosed S := by
  exact And.intro E.continuousActionClosed (And.intro E.smoothActionClosed E.equivariantClosed)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse