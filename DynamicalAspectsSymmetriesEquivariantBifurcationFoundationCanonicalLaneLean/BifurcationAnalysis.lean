import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure BifurcationAnalysis {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] (S : EquivariantDynamicalSystem G M) where
  parameterSpace : Type w
  parameterTopology : TopologicalSpace parameterSpace
  family : parameterSpace → S.phaseSpace → TS.phaseSpace
  equivariantFamily : ∀ p : parameterSpace, ∀ g : G, ∀ x : S.phaseSpace, family p (S.groupAction g x) = (S.groupAction g)⁎ (family p x)
  bifurcationPoint : S.phaseSpace × parameterSpace
  symmetryBreaking : Prop
  criticalEigenvalues : Prop

structure BifurcationAnalysisEvidence {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] {S : EquivariantDynamicalSystem G M} (B : BifurcationAnalysis S) where
  equivariantFamilyClosed : B.equivariantFamily
  symmetryBreakingClosed : B.symmetryBreaking
  criticalEigenvaluesClosed : B.criticalEigenvalues

def BifurcationAnalysisClosed {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] {S : EquivariantDynamicalSystem G M} (B : BifurcationAnalysis S) : Prop :=
  B.equivariantFamily ∧ B.symmetryBreaking ∧ B.criticalEigenvalues

theorem bifurcation_analysis_closed_from_evidence {G : Type u} [Group G] {M : Type v} [TopologicalSpace M] [SmoothManifold M] {S : EquivariantDynamicalSystem G M} (B : BifurcationAnalysis S) (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.equivariantFamilyClosed (And.intro E.symmetryBreakingClosed E.criticalEigenvaluesClosed)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse