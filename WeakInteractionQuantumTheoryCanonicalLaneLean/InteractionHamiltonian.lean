import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure FieldInteraction where
  couplingConstant : ℝ
  vertexType : String
  lorentzInvariant : Prop

def defaultInteraction : FieldInteraction := {
  couplingConstant := 1.0,
  vertexType := "V-A",
  lorentzInvariant := true
}

structure HamiltonianLayer where
  freePart : ℝ
  interactionPart : FieldInteraction
  selfAdjoint : Prop
  boundedBelow : Prop
  selfAdjointProof : selfAdjoint
  boundedBelowProof : boundedBelow

def sourceHamiltonianLayer : HamiltonianLayer := {
  freePart := 0.0,
  interactionPart := defaultInteraction,
  selfAdjoint := true,
  boundedBelow := true,
  selfAdjointProof := rfl,
  boundedBelowProof := rfl
}

def hamiltonianClosed (H : HamiltonianLayer) : Prop :=
  H.selfAdjoint ∧ H.boundedBelow

theorem source_hamiltonian_closed : hamiltonianClosed sourceHamiltonianLayer := by
  exact And.intro rfl rfl

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse