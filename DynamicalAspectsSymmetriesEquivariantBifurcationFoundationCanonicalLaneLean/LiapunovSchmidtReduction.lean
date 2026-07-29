import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure LiapunovSchmidtReductionPackage where
  kernelDimension : Nat
  isotypicDecomposition : Prop
  reducedEquationForm : Prop

def LiapunovSchmidtReductionClosed (L : LiapunovSchmidtReductionPackage) : Prop :=
  L.isotypicDecomposition ∧ L.reducedEquationForm

theorem liapunov_schmidt_reduction_closed (L : LiapunovSchmidtReductionPackage) : LiapunovSchmidtReductionClosed L :=
  And.intro L.isotypicDecomposition L.reducedEquationForm

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse