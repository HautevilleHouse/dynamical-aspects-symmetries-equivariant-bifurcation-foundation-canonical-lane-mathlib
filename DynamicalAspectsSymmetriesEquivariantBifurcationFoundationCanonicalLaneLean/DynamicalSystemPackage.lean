import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean.EquivariantBifurcationPackage

/-!
# Dynamical System Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure DynamicalSystemPackage {G : EquivariantBifurcationPackage} where
  timeDomain : Type u
  flow : timeDomain → G.phaseSpace → G.phaseSpace
  flowGroupAction : Prop
  flowEquivariant : Prop
  invariantManifolds : Prop
  linearization : Prop
  stabilityAnalysis : Prop

structure DynamicalSystemEvidence {G : EquivariantBifurcationPackage}
    (D : DynamicalSystemPackage G) where
  flowGroupActionClosed : D.flowGroupAction
  flowEquivariantClosed : D.flowEquivariant
  invariantManifoldsClosed : D.invariantManifolds
  linearizationClosed : D.linearization
  stabilityAnalysisClosed : D.stabilityAnalysis

def DynamicalSystemClosed {G : EquivariantBifurcationPackage}
    (D : DynamicalSystemPackage G) : Prop :=
  D.flowGroupAction ∧ D.flowEquivariant ∧ D.invariantManifolds ∧
  D.linearization ∧ D.stabilityAnalysis

theorem dynamical_system_closed_from_evidence {G : EquivariantBifurcationPackage}
    (D : DynamicalSystemPackage G) (E : DynamicalSystemEvidence D) : DynamicalSystemClosed D := by
  exact And.intro E.flowGroupActionClosed
    (And.intro E.flowEquivariantClosed
      (And.intro E.invariantManifoldsClosed
        (And.intro E.linearizationClosed E.stabilityAnalysisClosed)))

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
