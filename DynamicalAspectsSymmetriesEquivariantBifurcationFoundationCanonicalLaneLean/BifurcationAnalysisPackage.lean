import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean.CenterManifoldPackage

/-!
# Bifurcation Analysis Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure BifurcationAnalysisPackage {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    {C : CenterManifoldPackage G D R} where
  parameterValues : Type u
  bifurcationPoints : Prop
  bifurcationDiagram : Prop
  equivariantBifurcationTypes : Prop
  modeInteractions : Prop
  genericBifurcation : Prop
  symmetryBreakingBifurcation : Prop
  stabilityOfBranches : Prop

structure BifurcationAnalysisEvidence {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    {C : CenterManifoldPackage G D R} (B : BifurcationAnalysisPackage G D R C) where
  bifurcationPointsClosed : B.bifurcationPoints
  bifurcationDiagramClosed : B.bifurcationDiagram
  equivariantBifurcationTypesClosed : B.equivariantBifurcationTypes
  modeInteractionsClosed : B.modeInteractions
  genericBifurcationClosed : B.genericBifurcation
  symmetryBreakingBifurcationClosed : B.symmetryBreakingBifurcation
  stabilityOfBranchesClosed : B.stabilityOfBranches

def BifurcationAnalysisClosed {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    {C : CenterManifoldPackage G D R} (B : BifurcationAnalysisPackage G D R C) : Prop :=
  B.bifurcationPoints ∧ B.bifurcationDiagram ∧ B.equivariantBifurcationTypes ∧
  B.modeInteractions ∧ B.genericBifurcation ∧ B.symmetryBreakingBifurcation ∧
  B.stabilityOfBranches

theorem bifurcation_analysis_closed_from_evidence {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    {C : CenterManifoldPackage G D R} (B : BifurcationAnalysisPackage G D R C)
    (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.bifurcationPointsClosed
    (And.intro E.bifurcationDiagramClosed
      (And.intro E.equivariantBifurcationTypesClosed
        (And.intro E.modeInteractionsClosed
          (And.intro E.genericBifurcationClosed
            (And.intro E.symmetryBreakingBifurcationClosed E.stabilityOfBranchesClosed)))))

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
