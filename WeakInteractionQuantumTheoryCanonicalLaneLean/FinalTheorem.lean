import canonicalLaneMathlib.AdmissibleClass
import WeakInteractionQuantumTheoryCanonicalLaneLean.WeakInteractionBridge

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

def ConstrainedWeakInteractionClosure (A : AdmissibleClass) : Prop :=
  WeakInteractionBridgeClosed A ∧ WeakInteractionGateClosed A

theorem constrained_weak_interaction_endgame (A : AdmissibleClass) :
    ConstrainedWeakInteractionClosure A := by
  exact And.intro (weak_interaction_bridge_from_admissible_class A) (weak_interaction_gate_from_admissible_class A)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse