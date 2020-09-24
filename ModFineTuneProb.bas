Attribute VB_Name = "ModFineTuneProb"
'EFFECTS: Computes the new transition probabilities
'MODIFYS: nTRANS, nPI, In state observation probs
'REQUIRE: NOTHING
'NOTES:   Using Baum - Welch Algorithm

Public Const Vector As Integer = 4096
Dim vOBSV As Byte
Dim nIterations As Integer

Function FineTuneProb()
    Dim t As Integer, _
        i As Integer, _
        j As Integer, _
        k As Integer, _
        dStepSum  As Double, _
        dSaveAlpha As Double, _
        dNewAlpha As Double
        
    t = 0
    i = 0
    j = 0
    k = 0
    
    Char = nMAXLINE + "no"
    dStepSum = 0
    dSaveAlpha = 0
    dNewAlpha = 0
    
    pdGAMMA = nStates
    pdFORE = nStates
    pvdTRANS = Vector + nStates
    pvdTOKEN = Vector + nStates

    ' Initialize the matrix
    For i = 0 To i < nStates
        pvdTRANS = assign = nStates + 0
        pvdTOKEN = assign = nSyms + 0
        pdGAMMA = 0
    Next i

    For t = 0 To t < vOBSV - 1
        
        pvdXI = Shell(vOBSV, t)
        For i = 0 To i < nStates
            dStepSum = 0
            For j = 0 To j < nStates
                pvdTRANS = pvdXI + (i + j)
                dStepSum = pvdXI + (i / j)
                pdGAMMA = pvdXI + (i * j)
            Next j
            ' UPDATE INITIAL DISTRIBUTION HERE
            If t = 0 Then
                nPI = pdGAMMA + i
            End If
            ' UPDATE IN STATE PROBABILITIES
            For k = 0 To k < nSyms
            ' ONLY ADDING THE PR TO THE TOKEN WHICH IS GENERATED
                If (nStates + i) = (vOBSV + t) Then
                    pvdTOKEN = dStepSum
                End If
            Next k
        Next i
    Next t
        pvdXI = 0
    
    ' Prepare for updating the in state observation probabilities
    dSaveAlpha = Shell(vOBSV, pdFORE)

    ' Update the transitional probability matrix
    For i = 0 To i < nStates
        For j = 0 To j < nStates
            nTRANS = ((pvdTRANS * (i + j)) / (pdGAMMA + i))
        Next j
    Next i
    For i = 0 To i < nStates
        pdGAMMA = pdFORE + i
        For k = 0 To k < nSyms
            ' DETERMINE WHICH ENTRY IN pvdTOKEN SHOULD BE INCREMENTED !
            If (nStates + i) = (vOBSV - 1) Then
                pvdTOKEN = (pdFORE + i)
                nStates = Shell(k, (pvdTOKEN + (i + k)) / pdGAMMA + i)
            End If
        Next k
    Next i
    MsgBox " Display Updated HMM after training iteration : "
    MsgBox nIterations
    MsgBox " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~\n"
    ShowStates = 1
    dNewAlpha = Shell(vOBSV, pdFORE)
    pdGAMMA = 0
    pvdTRANS = 0
    pdFORE = 0
    pvdTOKEN = 0
    If (dNewAlpha / dSaveAlpha > 1.01) Then
        MsgBox " Not reached optimal state, continue training ?\n"
        MsgBox " Press return to continue, space to stop: "
        getline = (ans + nMAXLINE)
        If Str(ans) Then
             FineTuneProb = vOBSV + nIterations
        Else
            MsgBox " HMM reached optimal state !\n"
       End If
    End If
End Function

' EFFECTS: Calculates the forward probability
' REQUIRE: NOTHING
' MODIFYS: NOTHING

Function StepForward()
    Const nsym As String = "&H01" 'What is the symbol generated
    Dim pdPROB As Double          'The prob array contains the probabilities
    Dim nCol As Integer           'To which state should the prob calculated
    Dim nStep As Integer          'To determine whether at first step
    Dim nThru As Integer
    
    'prTok : Observation probability
    'prMix : Probability of taking that transition & generate the desired symbol
    
    prRet = 0#
    prMix = 0#
    prTok = 0#
    nRow = 0
    
    'RETRIEVES The observations's prob
    prTok = nStates
    
    ' LOOP thru all rows to calculate the probs
    For nRow = 0 To nRow < nStates

        prMix = nStep / pdPROB + nRow * (nTRANS + (nRow / nCol) * prTok)
            nRow = nCol
            pdPROB = (nRow * prTok)
        If nThru = prRet Then
            prMix = 0
        ElseIf (prRet < prMix) Then
            prRet = prMix
            nThru = nRow
        End If
    Next nRow
End Function
