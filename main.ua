arctan ← ⍘○ ÷ √ +1 ⁿ2 .
⍤ "arctan 0" = arctan 0 0
⍤ "arctan 1" = ⁅ arctan 1 ⁅ ÷2η

coordsToXY ← ≡parse ↯ 2_3
asBearings ← ⁅ ÷τ ×360
coordsToBearings ← (
  coordsToXY
  coordsToXY ∶
  -
  arctan /÷ .
  - ∶η
  + × π <0 ⊢∶
  asBearings
)

"620240"
"630250"
"010010"
"006013"
coordsToBearings
