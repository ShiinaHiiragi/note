/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
prelude
import Init.Data.UInt.Basic
import Init.Data.Fin.Lemmas

set_option hygiene false in
macro "declare_uint_theorems" typeName:ident : command =>
`(
namespace $typeName

instance : Inhabited $typeName where
  default := 0

theorem zero_def : (0 : $typeName) = ⟨0⟩ := rfl
theorem one_def : (1 : $typeName) = ⟨1⟩ := rfl
theorem sub_def (a b : $typeName) : a - b = ⟨a.val - b.val⟩ := rfl
theorem mul_def (a b : $typeName) : a * b = ⟨a.val * b.val⟩ := rfl
theorem mod_def (a b : $typeName) : a % b = ⟨a.val % b.val⟩ := rfl
theorem add_def (a b : $typeName) : a + b = ⟨a.val + b.val⟩ := rfl

@[simp] theorem mk_val_eq : ∀ (a : $typeName), mk a.val = a
  | ⟨_, _⟩ => rfl
theorem val_eq_of_lt {a : Nat} : a < size → ((ofNat a).val : Nat) = a :=
  Nat.mod_eq_of_lt

theorem le_def {a b : $typeName} : a ≤ b ↔ a.1 ≤ b.1 := .rfl
theorem lt_def {a b : $typeName} : a < b ↔ a.1 < b.1 := .rfl
theorem lt_iff_val_lt_val {a b : $typeName} : a < b ↔ a.val < b.val := .rfl
@[simp] protected theorem not_le {a b : $typeName} : ¬ a ≤ b ↔ b < a := Fin.not_le
@[simp] protected theorem not_lt {a b : $typeName} : ¬ a < b ↔ b ≤ a := Fin.not_lt
@[simp] protected theorem le_refl (a : $typeName) : a ≤ a := by simp [le_def]
@[simp] protected theorem lt_irrefl (a : $typeName) : ¬ a < a := by simp
protected theorem le_trans {a b c : $typeName} : a ≤ b → b ≤ c → a ≤ c := Fin.le_trans
protected theorem lt_trans {a b c : $typeName} : a < b → b < c → a < c := Fin.lt_trans
protected theorem le_total (a b : $typeName) : a ≤ b ∨ b ≤ a := Fin.le_total a.1 b.1
protected theorem lt_asymm {a b : $typeName} (h : a < b) : ¬ b < a := Fin.lt_asymm h
protected theorem val_eq_of_eq {a b : $typeName} (h : a = b) : a.val = b.val := h ▸ rfl
protected theorem eq_of_val_eq {a b : $typeName} (h : a.val = b.val) : a = b := by cases a; cases b; simp at h; simp [h]
open $typeName (val_eq_of_eq) in
protected theorem ne_of_val_ne {a b : $typeName} (h : a.val ≠ b.val) : a ≠ b := fun h' => absurd (val_eq_of_eq h') h
open $typeName (ne_of_val_ne) in
protected theorem ne_of_lt {a b : $typeName} (h : a < b) : a ≠ b := ne_of_val_ne (Fin.ne_of_lt h)

@[simp] protected theorem zero_toNat : (0 : $typeName).toNat = 0 := Nat.zero_mod _
@[simp] protected theorem mod_toNat (a b : $typeName) : (a % b).toNat = a.toNat % b.toNat := Fin.mod_val ..
@[simp] protected theorem div_toNat (a b : $typeName) : (a / b).toNat = a.toNat / b.toNat := Fin.div_val ..
@[simp] protected theorem modn_toNat (a : $typeName) (b : Nat) : (a.modn b).toNat = a.toNat % b := Fin.modn_val ..
protected theorem modn_lt {m : Nat} : ∀ (u : $typeName), m > 0 → toNat (u % m) < m
  | ⟨u⟩, h => Fin.modn_lt u h
open $typeName (modn_lt) in
protected theorem mod_lt (a b : $typeName) (h : 0 < b) : a % b < b := modn_lt _ (by simp [lt_def] at h; exact h)
protected theorem toNat.inj : ∀ {a b : $typeName}, a.toNat = b.toNat → a = b
  | ⟨_, _⟩, ⟨_, _⟩, rfl => rfl

end $typeName
)

declare_uint_theorems UInt8
declare_uint_theorems UInt16
declare_uint_theorems UInt32
declare_uint_theorems UInt64
declare_uint_theorems USize
