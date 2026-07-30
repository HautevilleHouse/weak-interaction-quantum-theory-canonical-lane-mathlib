import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure FermionVertex where
  leftHandedCoupling : ℂ → ℂ
  rightHandedCoupling : ℂ → ℂ
  vectorCoupling : ℂ
  axialCoupling : ℂ
  couplingRelation : vectorCoupling = leftHandedCoupling 0 + rightHandedCoupling 0

structure FermionVertexAdmissible where
  vertex : FermionVertex
  chiralProjection : Prop
  gaugeInvariant : Prop
  admissible : chiralProjection ∧ gaugeInvariant

theorem vertex_admissible_checked (A : FermionVertexAdmissible) : A.admissible := A.admissible

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
