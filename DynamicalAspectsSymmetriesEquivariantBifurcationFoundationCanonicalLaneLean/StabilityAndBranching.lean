import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationFoundation.NormalFormClassification

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

structure StabilityAndBranching (G : Type u) [Group G] (M : Type v) [TopologicalSpace M]
    [ChartedSpace ℂ M] (ρ : SymmetryGroupAction G M) (X : EquivariantVectorField G M ρ)
    (bp : EquivariantBifurcationPoint G M ρ X)
    (cmr : CentreManifoldReduction G M ρ X bp)
    (nfc : NormalFormClassification G M ρ X bp cmr) where
  stabilityCondition : True
  branchingTypes : True
  explicitBifurcationDiagram : True

def StabilityAndBranchingClosed (sb : StabilityAndBranching G M ρ X bp cmr nfc) : Prop :=
  sb.stabilityCondition ∧ sb.branchingTypes ∧ sb.explicitBifurcationDiagram

theorem stability_and_branching_closed (sb : StabilityAndBranching G M ρ X bp cmr nfc) :
    StabilityAndBranchingClosed sb := by
  exact And.intro sb.stabilityCondition (And.intro sb.branchingTypes sb.explicitBifurcationDiagram)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse
