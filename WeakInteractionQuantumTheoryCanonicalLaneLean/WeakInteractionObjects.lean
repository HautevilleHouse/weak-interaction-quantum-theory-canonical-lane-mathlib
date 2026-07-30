import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

abbrev HilbertSpace := ℂ → ℂ
abbrev Operator := HilbertSpace → HilbertSpace
abbrev Observable := HilbertSpace → ℝ

def zeroHilbertSpace : HilbertSpace := fun _ => 0
def zeroOperator : Operator := fun _ => zeroHilbertSpace
def zeroObservable : Observable := fun _ => 0

structure WeakInteractionOperators where
  creation : Operator
  annihilation : Operator
  number : Operator
  commutationRelation : creation ∘ annihilation - annihilation ∘ creation = zeroOperator

structure WeakInteractionField where
  state : HilbertSpace
  operators : WeakInteractionOperators

def primitiveWeakInteractionOperators : WeakInteractionOperators := {
  creation := zeroOperator
  annihilation := zeroOperator
  number := zeroOperator
  commutationRelation := by
    ext φ
    simp [zeroOperator, zeroHilbertSpace]
}

def primitiveWeakInteractionField : WeakInteractionField := {
  state := zeroHilbertSpace
  operators := primitiveWeakInteractionOperators
}

def FieldClosed (F : WeakInteractionField) : Prop :=
  F.operators.creation ∘ F.operators.annihilation - F.operators.annihilation ∘ F.operators.creation = zeroOperator

theorem primitive_field_closed_checked : FieldClosed primitiveWeakInteractionField := by
  unfold FieldClosed primitiveWeakInteractionField primitiveWeakInteractionOperators
  simp [zeroOperator]

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse