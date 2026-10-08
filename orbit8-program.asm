; Bouncing dot on the real 16×8 framebuffer
; DRAW X, Y, VALUE writes one pixel
SET R0, 0        ; x position
SET R1, 0        ; y position
SET R2, 1        ; direction
SET R3, 1        ; pixel on
LOOP:
  DRAW R0, R1, R3
  OUT 8          ; consume a few cycles
  SET R3, 0
  DRAW R0, R1, R3
  SET R3, 1
  ADD R0, R2
  CMP R0, 15
  JNZ LOOP
  SET R2, -1
  JMP LOOP
