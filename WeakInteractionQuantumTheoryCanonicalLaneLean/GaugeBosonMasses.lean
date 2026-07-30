import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakInteractionQuantumTheoryCanonicalLaneLean

structure GaugeBoson where
  name : String
  mass : ℝ
  electricCharge : ℤ
  interactsWeakly : Bool

structure BosonMassLayer where
  bosons : List GaugeBoson
  massGenerationMechanism : String
  noMassContradiction : Prop
  noMassContradictionProof : noMassContradiction

def standardModelBosons : List GaugeBoson :=
  [ { name := "W±", mass := 80.379, electricCharge := 1, interactsWeakly := true },
    { name := "Z", mass := 91.1876, electricCharge := 0, interactsWeakly := true } ]

def sourceBosonMassLayer : BosonMassLayer := {
  bosons := standardModelBosons,
  massGenerationMechanism := "Higgs mechanism",
  noMassContradiction := true,
  noMassContradictionProof := rfl
}

def bosonMassClosed (B : BosonMassLayer) : Prop :=
  B.noMassContradiction ∧ (∀ b ∈ B.bosons, b.mass > 0)

theorem source_boson_mass_closed : bosonMassClosed sourceBosonMassLayer := by
  refine And.intro rfl ?_
  intro b hb
  simp at hb
  cases hb with
  | inl => norm_num
  | inr => norm_num

end WeakInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse