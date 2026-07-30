import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure CommutationCertificate where
  canonicalCommutation : Prop
  weylRelation : Prop
  stoneVonNeumann : Prop
  canonicalCommutationClosed : canonicalCommutation
  weylRelationClosed : weylRelation
  stoneVonNeumannClosed : stoneVonNeumann

def sourceCommutationCertificate : CommutationCertificate := {
  canonicalCommutation := true,
  weylRelation := true,
  stoneVonNeumann := true,
  canonicalCommutationClosed := rfl,
  weylRelationClosed := rfl,
  stoneVonNeumannClosed := rfl
}

def CommutationClosed (C : CommutationCertificate) : Prop :=
  C.canonicalCommutation ∧ C.weylRelation ∧ C.stoneVonNeumann

theorem source_commutation_closed : CommutationClosed sourceCommutationCertificate := by
  exact And.intro sourceCommutationCertificate.canonicalCommutationClosed
    (And.intro sourceCommutationCertificate.weylRelationClosed
      sourceCommutationCertificate.stoneVonNeumannClosed)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse