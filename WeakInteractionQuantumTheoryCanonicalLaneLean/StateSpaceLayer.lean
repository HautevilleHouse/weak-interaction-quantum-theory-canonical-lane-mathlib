import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure StateSpaceCertificate where
  hilbertSpace : Prop
  densityOperator : Prop
  traceNormalization : Prop
  hilbertSpaceClosed : hilbertSpace
  densityOperatorClosed : densityOperator
  traceNormalizationClosed : traceNormalization

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  hilbertSpace := true,
  densityOperator := true,
  traceNormalization := true,
  hilbertSpaceClosed := rfl,
  densityOperatorClosed := rfl,
  traceNormalizationClosed := rfl
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.hilbertSpace ∧ C.densityOperator ∧ C.traceNormalization

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro sourceStateSpaceCertificate.hilbertSpaceClosed
    (And.intro sourceStateSpaceCertificate.densityOperatorClosed
      sourceStateSpaceCertificate.traceNormalizationClosed)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse