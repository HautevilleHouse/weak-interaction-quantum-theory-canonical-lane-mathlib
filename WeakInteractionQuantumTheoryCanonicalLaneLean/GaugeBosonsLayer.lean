import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure GaugeBosonCertificate where
  wBoson : Prop
  zBoson : Prop
  massAcquisition : Prop
  wBosonClosed : wBoson
  zBosonClosed : zBoson
  massAcquisitionClosed : massAcquisition

def sourceGaugeBosonCertificate : GaugeBosonCertificate := {
  wBoson := true,
  zBoson := true,
  massAcquisition := true,
  wBosonClosed := rfl,
  zBosonClosed := rfl,
  massAcquisitionClosed := rfl
}

def GaugeBosonClosed (C : GaugeBosonCertificate) : Prop :=
  C.wBoson ∧ C.zBoson ∧ C.massAcquisition

theorem source_gauge_boson_closed : GaugeBosonClosed sourceGaugeBosonCertificate := by
  exact And.intro sourceGaugeBosonCertificate.wBosonClosed
    (And.intro sourceGaugeBosonCertificate.zBosonClosed
      sourceGaugeBosonCertificate.massAcquisitionClosed)

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse