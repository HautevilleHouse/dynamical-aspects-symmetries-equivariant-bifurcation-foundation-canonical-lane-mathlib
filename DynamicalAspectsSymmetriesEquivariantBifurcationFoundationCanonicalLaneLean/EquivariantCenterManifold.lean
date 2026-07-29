import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure EquivariantCenterManifoldPackage (A : AdmissibleClass) where
  criticalEigenvalues : List ℂ
  centerSpaceDimension : ℕ
  symmetryActionOnCenter : Prop
  reducedVectorField : Prop
  normalFormComputed : Prop
  centerManifoldReductionValid : Prop

structure EquivariantCenterManifoldEvidence (C : EquivariantCenterManifoldPackage A) where
  centerManifoldReductionClosed : C.centerManifoldReductionValid
  reducedVectorFieldClosed : C.reducedVectorField

def EquivariantCenterManifoldClosed (C : EquivariantCenterManifoldPackage A) : Prop :=
  C.centerManifoldReductionValid ∧ C.reducedVectorField

theorem equivariant_center_manifold_closed_from_evidence
    (A : AdmissibleClass) (C : EquivariantCenterManifoldPackage A)
    (E : EquivariantCenterManifoldEvidence C) : EquivariantCenterManifoldClosed C := by
  exact And.intro E.centerManifoldReductionClosed E.reducedVectorFieldClosed

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
