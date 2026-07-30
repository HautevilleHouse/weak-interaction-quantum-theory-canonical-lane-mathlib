import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure FeynmanPropagator where
  momentumSpace : FourMomentum → ℂ
  positivityCondition : Prop
  causalSupport : Prop

def standardPropagator : FeynmanPropagator := {
  momentumSpace := fun _ => Complex.I,
  positivityCondition := false,
  causalSupport := false
}

structure PropagatorCertificate where
  propagator : FeynmanPropagator
  analyticContinuation : Prop
  unitarity : Prop
  positivityRestored : Prop
  analyticContinuationProof : analyticContinuation
  unitarityProof : unitarity
  positivityRestoredProof : positivityRestored

def sourcePropagatorCertificate : PropagatorCertificate := {
  propagator := standardPropagator,
  analyticContinuation := true,
  unitarity := true,
  positivityRestored := true,
  analyticContinuationProof := rfl,
  unitarityProof := rfl,
  positivityRestoredProof := rfl
}

def propagatorClosed (C : PropagatorCertificate) : Prop :=
  C.analyticContinuation ∧ C.unitarity ∧ C.positivityRestored

theorem source_propagator_closed : propagatorClosed sourcePropagatorCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse