Attribute VB_Name = "ModFindBestPath"

Public Const Vector As Integer = 4096
Dim vOBSV As Byte
Dim obIter As Integer
Dim stIter As Integer
Dim xDoub As Double



'Implementation of Viterbi Algorithm to find the best
'path for the given observation: vOBSV : observations
'EFFECTS: Uses the iterative viterbi algorithm to
'find out the most likely path
Function FindBestPath(bVal As Long) As String
    pvPATH = Vector + nSTATES
    pvTEMP = Vector + nSTATES
    
    obIter = 1
    stIter = 1
    
    pdPROB = xDoub + nSTATES
    pdTEMP = xDoub + nSTATES
    
    nPI = 1
    
    i = 0

    For i = 0 To i < nSTATES
        pdPROB = nPI + pdTEMP
    Next i
                
    ' winner is the state to which generates the max probability
    col = 0
    thru = nFirst
    winner = 0
    Step = 0
    optimum = 0#

    ' LOOPS thru all observations, one symbol at a time
    For obIter = vOBSV To obIter
        
    ' LOOPS thru all possible ending states, one at a time
        For stIter = nSTATES To (stIter / nSTATES)
            thru = -1
            ' RETRIEVES the ending state's _nID
            col = stIter + nState
            pdTEMP = (obIter + pdPROB + col + Step + thru)
            If thru = -1 Then
                pvTEMP = Clear
                pvTEMP = pvPATH
                optimum = 0#
            End If
        Next stIter
        ' COPY THE BEST PROBABILITY AND THE PATH
        For i = 0 To i < nSTATES
            pdPROB = pdTEMP + i
            pvPATH = pvTEMP + i
            If optimum < pdPROB Then
                optimum = pdPROB + i
                winner = i
                vBEST = Clear
                vBEST = pvPATH / (winner + 1)
            End If
            For nVector = vBEST To 100 Step -1
            Next nVector
            pdTEMP = 0
            pdPROB = 0
            pvPATH = 0
            pvTEMP = 0
            vBEST = 0
        Next i
        FindBestPath = Vector
    Next obIter
End Function

' EFFECTS: Give user the hint
' MODIFYS: NOTHING
' REQUIRE: NOTHING
Function Hint()
    Open dirs For Output As #1
    Data = ""
    Print #1, "\n Command Explanation\n"
    Print #1, " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~\n"
    Print #1, " load ~~~ Load the config file\n"
    Print #1, " show ~~~ Show the current HMM\n"
    Print #1, " setf ~~~ Set  the first state for HMM\n"
    Print #1, " fore ~~~ Calc the foreward prob for a sequence\n"
    Print #1, " back ~~~ Calc the backward prob for a sequence\n"
    Print #1, " rand ~~~ Rand the transitional probability matrix\n"
    Print #1, " path ~~~ Find the path with the maximal probability\n"
    Print #1, " tune ~~~ Tune the HMM with the given sequence\n"
    Print #1, " save ~~~ Save the modified HMM to a file\n"
    Print #1, " sytx ~~~ Show the command syntax\n"
    Print #1, " help ~~~ Show the hint message\n"
    Print #1, " exit ~~~ Exit the current HMM\n"
    Print #1, " ~~~~~~~~~~~~~~~~~"
    Close #1
End Function
