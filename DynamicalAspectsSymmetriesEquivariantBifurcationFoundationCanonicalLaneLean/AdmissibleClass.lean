import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsSymmetriesEquivariantBifurcationFoundation

structure AdmissibleClass where
  object : EquivariantBifurcationPoint object
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DynamicalAspectsSymmetriesEquivariantBifurcationFoundation
end HautevilleHouse
