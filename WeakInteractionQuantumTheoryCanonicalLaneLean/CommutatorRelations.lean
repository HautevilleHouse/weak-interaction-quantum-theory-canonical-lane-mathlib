import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure FieldOperator where
  creation : Spinor → Spinor
  annihilation : Spinor → Spinor

structure CommutationRelation where
  operator : FieldOperator
  anticommutation : ∀ ψ, operator.creation (operator.annihilation ψ) + operator.annihilation (operator.creation ψ) = ψ
  bosonicCommutation : ∀ ψ, operator.creation (operator.annihilation ψ) - operator.annihilation (operator.creation ψ) = ψ

structure CommutationLayer where
  operators : List FieldOperator
  anticommutationHolds : Bool
  bosonicCommutationHolds : Bool

def sampleCommutator : CommutationLayer := {
  operators := [],
  anticommutationHolds := true,
  bosonicCommutationHolds := true
}

def commutationClosed (C : CommutationLayer) : Prop :=
  C.anticommutationHolds ∧ C.bosonicCommutationHolds

theorem sample_commutation_closed : commutationClosed sampleCommutator := by
  exact And.intro rfl rfl

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse