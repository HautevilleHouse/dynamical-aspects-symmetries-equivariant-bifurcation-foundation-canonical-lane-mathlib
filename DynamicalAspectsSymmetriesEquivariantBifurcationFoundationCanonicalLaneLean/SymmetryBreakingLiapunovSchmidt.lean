import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure LiapunovSchmidtReductionPackage (A : AdmissibleClass) where
  fredholmOperator : Type u
  kernelDimension : ℕ
  equivariantFredholmProperty : Prop
  LyapunovSchmidtReducedEquation : Prop
  bifurcationPointIsolated : Prop

structure LiapunovSchmidtReductionEvidence (L : LiapunovSchmidtReductionPackage A) where
  fredholmPropertyClosed : L.equivariantFredholmProperty
  reducedEquationClosed : L.LyapunovSchmidtReducedEquation

def LiapunovSchmidtReductionClosed (L : LiapunovSchmidtReductionPackage A) : Prop :=
  L.equivariantFredholmProperty ∧ L.LyapunovSchmidtReducedEquation

theorem liapunov_schmidt_reduction_closed_from_evidence
    (A : AdmissibleClass) (L : LiapunovSchmidtReductionPackage A)
    (E : LiapunovSchmidtReductionEvidence L) : LiapunovSchmidtReductionClosed L := by
  exact And.intro E.fredholmPropertyClosed E.reducedEquationClosed

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse
