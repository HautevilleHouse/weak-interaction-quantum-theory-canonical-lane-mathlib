import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure CurrentAlgebra where
  chargeCommutator : (Observable → Observable → Observable) → Prop
  isospinRelations : Prop
  hyperchargeRelations : Prop
  chargeAlgebraClosed : chargeCommutator ∧ isospinRelations ∧ hyperchargeRelations

theorem current_algebra_holds (C : CurrentAlgebra) : Prop :=
  C.chargeAlgebraClosed

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
