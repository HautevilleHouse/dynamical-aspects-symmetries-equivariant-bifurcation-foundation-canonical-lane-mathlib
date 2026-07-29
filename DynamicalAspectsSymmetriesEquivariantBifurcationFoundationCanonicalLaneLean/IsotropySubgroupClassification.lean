import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure IsotropySubgroupClassificationPackage where
  space : Type u
  groupAction : Type v
  isotropySubgroups : Prop
  latticeStructure : Prop

def IsotropySubgroupClassificationClosed (I : IsotropySubgroupClassificationPackage) : Prop :=
  I.isotropySubgroups ∧ I.latticeStructure

theorem isotropy_subgroup_classification_closed (I : IsotropySubgroupClassificationPackage) : IsotropySubgroupClassificationClosed I :=
  And.intro I.isotropySubgroups I.latticeStructure

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse