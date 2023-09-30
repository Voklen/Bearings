arctan ← ⍘○ ÷ √ +1 ⁿ2 .
~~~
⍤ "arctan 0" = arctan 0 0
⍤ "arctan 1" = ⁅ arctan 1 ⁅ ÷2η
~~~

coordsToXY ← ≡parse ↯ 2_3
~~~
⍤ "Normal" ≅ [14 13] coordsToXY "014013"
⍤ "Zeros" ≅ [0 0] coordsToXY "000000"
⍤ "All 9s" ≅ [999 999] coordsToXY "999999"
~~~

asBearings ← ⁅ ÷τ ×360
~~~
⍤ "π" = 180 asBearings π
⍤ "0" = 0 asBearings 0
⍤ "τ" = 360 asBearings τ
~~~

coordsToBearings ← (
  coordsToXY
  coordsToXY ∶
  -
  arctan /÷ .
  - ∶η
  + × π <0 ⊢∶
  asBearings
)
~~~
= 127 coordsToBearings "014007" "010010"
⍤ "C quadrant"
= 53 coordsToBearings "014013" "010010"
⍤ "A quadrant"
= 307 coordsToBearings "006013" "010010"
⍤ "S quadrant"
= 233 coordsToBearings "006007" "010010"
⍤ "T quadrant"
~~~
