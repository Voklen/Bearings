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
  # Convert strings to [x y]
  coordsToXY
  coordsToXY ∶
  # Find the vec between the coords
  -
  # Get arctan of [x y]
  ∠ ⊡1∶ ⊡0. .
  # Do η - θ
  - ∶η
  # Check if -x and +y
  <0 ⊡0.∶
  >0 ⊡1∶
  = 2 +
  # If yes add τ
  + × τ
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
