import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean.DynamicalSystemPackage

/-!
# Symmetry Reduction Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure SymmetryReductionPackage {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} where
  orbitSpace : Type u
  reducedSystem : Type v
  reductionMap : G.phaseSpace → orbitSpace
  reducedVectorField : Prop
  bifurcationDiagram : Prop
  normalForm : Prop
  centerManifoldReduction : Prop
  symmetryBreaking : Prop

structure SymmetryReductionEvidence {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} (R : SymmetryReductionPackage G D) where
  reducedVectorFieldClosed : R.reducedVectorField
  bifurcationDiagramClosed : R.bifurcationDiagram
  normalFormClosed : R.normalForm
  centerManifoldReductionClosed : R.centerManifoldReduction
  symmetryBreakingClosed : R.symmetryBreaking

def SymmetryReductionClosed {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} (R : SymmetryReductionPackage G D) : Prop :=
  R.reducedVectorField ∧ R.bifurcationDiagram ∧ R.normalForm ∧
  R.centerManifoldReduction ∧ R.symmetryBreaking

theorem symmetry_reduction_closed_from_evidence {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} (R : SymmetryReductionPackage G D)
    (E : SymmetryReductionEvidence R) : SymmetryReductionClosed R := by
  exact And.intro E.reducedVectorFieldClosed
    (And.intro E.bifurcationDiagramClosed
      (And.intro E.normalFormClosed
        (And.intro E.centerManifoldReductionClosed E.symmetryBreakingClosed)))

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
