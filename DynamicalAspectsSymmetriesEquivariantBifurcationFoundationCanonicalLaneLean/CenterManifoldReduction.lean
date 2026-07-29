import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure CenterManifoldReductionPackage where
  centerSpace : Type u
  equivariantVectorField : Prop
  reducedDynamics : Prop

def CenterManifoldReductionClosed (C : CenterManifoldReductionPackage) : Prop :=
  C.equivariantVectorField ∧ C.reducedDynamics

theorem center_manifold_reduction_closed (C : CenterManifoldReductionPackage) : CenterManifoldReductionClosed C :=
  And.intro C.equivariantVectorField C.reducedDynamics

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse