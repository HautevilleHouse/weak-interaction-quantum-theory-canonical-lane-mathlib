import canonicalLaneMathlib.AdmissibleClass
import WeakInteractionQuantumTheoryCanonicalLaneLean.SpectralTheoremLayer

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

def WeakInteractionBridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem weak_interaction_bridge_from_admissible_class (A : AdmissibleClass) :
    WeakInteractionBridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

def WeakInteractionGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem weak_interaction_gate_from_admissible_class (A : AdmissibleClass) :
    WeakInteractionGateClosed A := by
  exact A.gateWitness

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse