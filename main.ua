arctan ← ⍘○ ÷ √ +1 ⁿ2 .
⍤ "arctan 0" = arctan 0 0
⍤ "arctan 1" = ⁅ arctan 1 ⁅ ÷2η
asBearings ← ⁅ ÷τ ×360

"620240"
"630250"
"010010"
"006013"
startCoord ← ≡parse ↯ 2_3 ∶
endCoord ← ≡parse ↯ 2_3
vec ← - startCoord endCoord
arctan /÷ vec
- ∶η
ans ← + × π <0 ⊢vec
asBearings ans
