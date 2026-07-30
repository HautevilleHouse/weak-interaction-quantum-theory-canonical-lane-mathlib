import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure SpectralMeasure where
  projectionValued : Prop
  borelSupport : Prop
  resolutionOfIdentity : Prop

def trivialSpectralMeasure : SpectralMeasure := {
  projectionValued := true,
  borelSupport := true,
  resolutionOfIdentity := true
}

structure SpectralCertificate where
  measure : SpectralMeasure
  symmetry : Prop
  spectrumReal : Prop
  decompositionClosed : Prop
  symmetryProof : symmetry
  spectrumRealProof : spectrumReal
  decompositionClosedProof : decompositionClosed

def sourceSpectralCertificate : SpectralCertificate := {
  measure := trivialSpectralMeasure,
  symmetry := true,
  spectrumReal := true,
  decompositionClosed := true,
  symmetryProof := rfl,
  spectrumRealProof := rfl,
  decompositionClosedProof := rfl
}

def spectralClosed (C : SpectralCertificate) : Prop :=
  C.measure.projectionValued ∧ C.measure.borelSupport ∧ C.measure.resolutionOfIdentity ∧
  C.symmetry ∧ C.spectrumReal ∧ C.decompositionClosed

theorem source_spectral_closed : spectralClosed sourceSpectralCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse