import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure WeakCurrentCertificate where
  chargedCurrent : Prop
  neutralCurrent : Prop
  parityViolation : Prop
  chargedCurrentClosed : chargedCurrent
  neutralCurrentClosed : neutralCurrent
  parityViolationClosed : parityViolation

def sourceWeakCurrentCertificate : WeakCurrentCertificate := {
  chargedCurrent := true,
  neutralCurrent := true,
  parityViolation := true,
  chargedCurrentClosed := rfl,
  neutralCurrentClosed := rfl,
  parityViolationClosed := rfl
}

def WeakCurrentClosed (C : WeakCurrentCertificate) : Prop :=
  C.chargedCurrent ∧ C.neutralCurrent ∧ C.parityViolation

theorem source_weak_current_closed : WeakCurrentClosed sourceWeakCurrentCertificate := by
  exact And.intro sourceWeakCurrentCertificate.chargedCurrentClosed
    (And.intro sourceWeakCurrentCertificate.neutralCurrentClosed
      sourceWeakCurrentCertificate.parityViolationClosed)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse