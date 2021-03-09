A)

Loop:
    L.D F1, 0(R1)
    L.D F2, 0(R2)
    NOP
    MUL F3, F1, F2
    DADDUI R1, R1, #-8
    DADDUI R2, R2, #-8
    DADDUI R3, R3, #-8
    BNE R1, R4, Loop
    S.D F3, 8(R3)



B)

Loop:
    L.D F1, 0(R1)
    L.D F2, 0(R2)
    L.D F11, -8(R1)
    L.D F12, -8(R2)
    MUL F3, F1, F2
    MUL F13, F11, F12
    DADDUI R1, R1, #-16
    DADDUI R2, R2, #-16
    DADDUI R3, R3, #-16
    S.D F3, 16(R3)
    BNE R1, R4, Loop
    S.D F13, 8(R3)



C)

Loop:
    MUL F3, F1, F2
    DADDUI R1, R1, #-8
    DADDUI R2, R2, #-8
    DADDUI R3, R3, #-8
    L.D F1, 0(R1)
    L.D F2, 0(R2)
    BNE R1, R4, Loop
    S.D F3, 8(R3)
