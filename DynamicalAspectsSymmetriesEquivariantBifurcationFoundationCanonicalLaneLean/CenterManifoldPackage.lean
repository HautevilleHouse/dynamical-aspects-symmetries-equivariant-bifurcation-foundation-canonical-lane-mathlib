import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean.SymmetryReductionPackage

/-!
# Center Manifold Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure CenterManifoldPackage {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D} where
  centerManifold : Type u
  reducedDynamics : Type v
  existenceTheorem : Prop
  invarianceProperty : Prop
  attractivityProperty : Prop
  normalFormOnCenter : Prop
  equivariantCenterManifold : Prop

structure CenterManifoldEvidence {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    (C : CenterManifoldPackage G D R) where
  existenceTheoremClosed : C.existenceTheorem
  invariancePropertyClosed : C.invarianceProperty
  attractivityPropertyClosed : C.attractivityProperty
  normalFormOnCenterClosed : C.normalFormOnCenter
  equivariantCenterManifoldClosed : C.equivariantCenterManifold

def CenterManifoldClosed {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    (C : CenterManifoldPackage G D R) : Prop :=
  C.existenceTheorem ∧ C.invarianceProperty ∧ C.attractivityProperty ∧
  C.normalFormOnCenter ∧ C.equivariantCenterManifold

theorem center_manifold_closed_from_evidence {G : EquivariantBifurcationPackage}
    {D : DynamicalSystemPackage G} {R : SymmetryReductionPackage G D}
    (C : CenterManifoldPackage G D R) (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.existenceTheoremClosed
    (And.intro E.invariancePropertyClosed
      (And.intro E.attractivityPropertyClosed
        (And.intro E.normalFormOnCenterClosed E.equivariantCenterManifoldClosed)))

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
