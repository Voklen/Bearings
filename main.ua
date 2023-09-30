arctan ← ⍘○ ÷ √ +1 ⁿ2 .
⍤ "arctan 0" = arctan 0 0
⍤ "arctan 1" = ⁅ arctan 1 ⁅ ÷2η
coordsToXY ← ≡parse ↯ 2_3
asBearings ← ⁅ ÷τ ×360

"620240"
"630250"
"010010"
"006013"

startCoord ← coordsToXY ∶
endCoord ← coordsToXY
vec ← - startCoord endCoord
arctan /÷ vec
- ∶η
ans ← + × π <0 ⊢vec

asBearings ans