import canonicalLaneMathlib.AdmissibleClass

/-!
# Equivariant Bifurcation Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure EquivariantBifurcationPackage where
  groupAction : Type u
  phaseSpace : Type v
  symmetryGroup : Type w
  bifurcationParameter : Type x
  groupActionSmooth : Prop
  equivariantVectorField : Prop
  symmetryReduction : Prop
  bifurcationEquation : Prop
  isotropySubgroups : Prop
  steadyStateBifurcation : Prop
  hopfBifurcation : Prop

structure EquivariantBifurcationEvidence (P : EquivariantBifurcationPackage) where
  groupActionSmoothClosed : P.groupActionSmooth
  equivariantVectorFieldClosed : P.equivariantVectorField
  symmetryReductionClosed : P.symmetryReduction
  bifurcationEquationClosed : P.bifurcationEquation
  isotropySubgroupsClosed : P.isotropySubgroups
  steadyStateBifurcationClosed : P.steadyStateBifurcation
  hopfBifurcationClosed : P.hopfBifurcation

def EquivariantBifurcationClosed (P : EquivariantBifurcationPackage) : Prop :=
  P.groupActionSmooth ∧ P.equivariantVectorField ∧ P.symmetryReduction ∧
  P.bifurcationEquation ∧ P.isotropySubgroups ∧
  P.steadyStateBifurcation ∧ P.hopfBifurcation

theorem equivariant_bifurcation_closed_from_evidence (P : EquivariantBifurcationPackage)
    (E : EquivariantBifurcationEvidence P) : EquivariantBifurcationClosed P := by
  exact And.intro E.groupActionSmoothClosed
    (And.intro E.equivariantVectorFieldClosed
      (And.intro E.symmetryReductionClosed
        (And.intro E.bifurcationEquationClosed
          (And.intro E.isotropySubgroupsClosed
            (And.intro E.steadyStateBifurcationClosed E.hopfBifurcationClosed)))))

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
