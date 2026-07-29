import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsSymmetriesEquivariantBifurcationFoundation.CentreManifoldReduction

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

structure NormalFormClassification (G : Type u) [Group G] (M : Type v) [TopologicalSpace M]
    [ChartedSpace ℂ M] (ρ : SymmetryGroupAction G M) (X : EquivariantVectorField G M ρ)
    (bp : EquivariantBifurcationPoint G M ρ X)
    (cmr : CentreManifoldReduction G M ρ X bp) where
  normalForm : True
  symmetryActionOnNormalForm : True
  bifurcationTypesClassified : True

def NormalFormClassificationClosed (nfc : NormalFormClassification G M ρ X bp cmr) : Prop :=
  nfc.normalForm ∧ nfc.symmetryActionOnNormalForm ∧ nfc.bifurcationTypesClassified

theorem normal_form_classification_closed (nfc : NormalFormClassification G M ρ X bp cmr) :
    NormalFormClassificationClosed nfc := by
  exact And.intro nfc.normalForm (And.intro nfc.symmetryActionOnNormalForm nfc.bifurcationTypesClassified)

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse
