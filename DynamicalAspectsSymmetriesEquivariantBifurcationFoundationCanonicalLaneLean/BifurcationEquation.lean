import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean

structure BifurcationEquationPackage where
  stateSpace : Type u
  parameterSpace : Type v
  equivariantMaps : Prop
  bifurcationCondition : Prop

def BifurcationEquationClosed (B : BifurcationEquationPackage) : Prop :=
  B.equivariantMaps ∧ B.bifurcationCondition

theorem bifurcation_equation_closed (B : BifurcationEquationPackage) : BifurcationEquationClosed B :=
  And.intro B.equivariantMaps B.bifurcationCondition

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundationCanonicalLaneLean
end HautevilleHouse