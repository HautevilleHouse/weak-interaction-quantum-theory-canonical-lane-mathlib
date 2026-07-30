import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

abbrev HilbertSpace := ℂ
abbrev Observable := HilbertSpace → ℂ

structure WeakInteractionObservables where
  leftHandedCurrent : Observable
  rightHandedCurrent : Observable
  chargedCurrent : (ℂ → ℂ) → Observable
  neutralCurrent : Observable

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
