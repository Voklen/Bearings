CoordsToXY ← ≡parse ↯ 2_3
~~~
⍤ "Normal" ≅ [14 13] CoordsToXY "014013"
⍤ "Zeros" ≅ [0 0] CoordsToXY "000000"
⍤ "All 9s" ≅ [999 999] CoordsToXY "999999"
~~~

AsBearings ← ⁅ ÷τ ×360
~~~
⍤ "π" = 180 AsBearings π
⍤ "0" = 0 AsBearings 0
⍤ "τ" = 360 AsBearings τ
~~~

CoordsToBearings ← (
  # Convert strings to [x y]
  CoordsToXY
  CoordsToXY ∶
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
  AsBearings
)
~~~
= 127 CoordsToBearings "014007" "010010"
⍤ "C quadrant"
= 53 CoordsToBearings "014013" "010010"
⍤ "A quadrant"
= 307 CoordsToBearings "006013" "010010"
⍤ "S quadrant"
= 233 CoordsToBearings "006007" "010010"
⍤ "T quadrant"
~~~

# Stuff that has to be done for modules to work
CoordsToBearings ← CoordsToBearings
CoordsToBearings_
