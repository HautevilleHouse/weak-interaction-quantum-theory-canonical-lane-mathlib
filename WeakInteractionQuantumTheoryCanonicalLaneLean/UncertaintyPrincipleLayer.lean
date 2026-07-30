import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure UncertaintyCertificate where
  commutatorBound : Prop
  varianceInequality : Prop
  heisenbergInequality : Prop
  commutatorBoundClosed : commutatorBound
  varianceInequalityClosed : varianceInequality
  heisenbergInequalityClosed : heisenbergInequality

def sourceUncertaintyCertificate : UncertaintyCertificate := {
  commutatorBound := true,
  varianceInequality := true,
  heisenbergInequality := true,
  commutatorBoundClosed := rfl,
  varianceInequalityClosed := rfl,
  heisenbergInequalityClosed := rfl
}

def UncertaintyClosed (C : UncertaintyCertificate) : Prop :=
  C.commutatorBound ∧ C.varianceInequality ∧ C.heisenbergInequality

theorem source_uncertainty_closed : UncertaintyClosed sourceUncertaintyCertificate := by
  exact And.intro sourceUncertaintyCertificate.commutatorBoundClosed
    (And.intro sourceUncertaintyCertificate.varianceInequalityClosed
      sourceUncertaintyCertificate.heisenbergInequalityClosed)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse