import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

abbrev FourMomentum := Fin 4 → ℝ
abbrev Spinor := Fin 4 → ℂ
abbrev DiracIndex := Fin 4

structure WeakInteractionState where
  momentum : FourMomentum
  spinor : Spinor

structure StateSpace where
  states : Set WeakInteractionState
  innerProduct : WeakInteractionState → WeakInteractionState → ℂ
  positiveDefinite : ∀ s, s ≠ default → innerProduct s s > 0

def defaultState : WeakInteractionState := {
  momentum := fun _ => 0,
  spinor := fun _ => 0
}

def trivialStateSpace : StateSpace := {
  states := {defaultState},
  innerProduct := fun _ _ => 0,
  positiveDefinite := by
    intro s h
    exfalso
    apply h
    rfl
}

def stateClosed (S : StateSpace) : Prop :=
  (defaultState ∈ S.states) ∧ S.innerProduct defaultState defaultState = 0

theorem trivial_state_closed : stateClosed trivialStateSpace := by
  refine ⟨by simp, ?_⟩
  simp

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse