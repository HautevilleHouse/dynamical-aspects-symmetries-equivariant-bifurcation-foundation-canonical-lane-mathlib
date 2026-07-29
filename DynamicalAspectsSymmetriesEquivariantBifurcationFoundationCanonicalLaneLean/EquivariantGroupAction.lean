import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure EquivariantGroupActionPackage where
  group : Type u
  action : Type v -> Type v
  smoothness : Prop
  properness : Prop

def EquivariantGroupActionClosed (G : EquivariantGroupActionPackage) : Prop :=
  G.smoothness ∧ G.properness

theorem equivariant_group_action_closed (G : EquivariantGroupActionPackage) : EquivariantGroupActionClosed G :=
  And.intro G.smoothness G.properness

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse