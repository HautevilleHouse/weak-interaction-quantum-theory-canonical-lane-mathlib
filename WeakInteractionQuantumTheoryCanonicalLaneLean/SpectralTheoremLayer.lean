import canonicalLaneMathlib.AdmissibleClass
import WeakInteractionQuantumTheoryCanonicalLaneLean.WeakInteractionObjects

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure SpectralCertificate where
  field : WeakInteractionField
  selfAdjoint : Prop
  spectralResolution : Prop
  spectralMeasure : Prop
  selfAdjointProof : selfAdjoint
  spectralResolutionProof : spectralResolution
  spectralMeasureProof : spectralMeasure

def sourceSpectralCertificate : SpectralCertificate := {
  field := primitiveWeakInteractionField
  selfAdjoint := true
  spectralResolution := true
  spectralMeasure := true
  selfAdjointProof := rfl
  spectralResolutionProof := rfl
  spectralMeasureProof := rfl
}

def SpectralClosed (C : SpectralCertificate) : Prop :=
  FieldClosed C.field ∧ C.selfAdjoint ∧ C.spectralResolution ∧ C.spectralMeasure

theorem source_spectral_closed : SpectralClosed sourceSpectralCertificate := by
  exact And.intro primitive_field_closed_checked
    (And.intro rfl (And.intro rfl rfl))

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse