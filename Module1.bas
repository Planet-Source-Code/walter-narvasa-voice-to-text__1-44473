Attribute VB_Name = "Module1"
' HMM API FUNCTIONS

Option Explicit

Public line, test, words, descrip, dirs As Variant
Public count, pos, length, i As Integer
Public Declare Function getwindir Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Public Sub loadfiles()
    On Error Resume Next
    Form1.HMMSR.Deactivate
    Form1.HMMSR.GrammarFromFile (words)
    Form1.HMMSR.Activate
    
    Open words For Input As #1
        Do Until EOF(1)
            Line Input #1, line
            If line <> "" Then
                test = Left(line, 8)
                If test = "<start>=" Then
                    line = Mid(line, 9, (Len(line) - 8))
                    Form1.List1.AddItem (line)
                    Form2.List1.AddItem (line)
                End If
            End If
        Loop
    Close #1
    
    Open dirs For Input As #1
        Do Until EOF(1)
            Line Input #1, line
            If line <> "" Then
                Form1.List2.AddItem (line)
                
                count = 0: pos = 0
                Do
                    pos = InStr(pos + 1, line, "\")    'find how many "\"s there are
                    If pos = 0 Then Exit Do            'in the full dir
                    count = count + 1
                Loop Until pos = 0
                
                For i = 0 To count - 1                  'using the last result, gets
                    pos = InStr(pos + 1, line, "\") + 1 'position of the last "\"
                Next i                                  'and add 1 so it is pos after "\"
            
                length = Len(line) - pos + 1            'length of filetitle
                line = Mid(line, pos, length)           'extract filetitle

                Form2.List3.AddItem (line)
            End If
        Loop
    Close #1
    
    Open descrip For Input As #1
        Do Until EOF(1)
            Line Input #1, line
            If line <> "" Then
                Form1.List3.AddItem (line)
                Form2.List2.AddItem (line)
            End If
        Loop
    Close #1

    Form1.Text1.Text = "Ready"
    
End Sub

Public Sub savefiles()
    
    Dim data As Variant
    
    Open words For Output As #1
        data = "[Grammer]" & vbCrLf & "type=cfg" & vbCrLf & "[<start>]" & vbCrLf
        Form1.List1.ListIndex = -1
        For i = 0 To Form1.List1.ListCount
            If Form1.List1.List(i) <> "" Then
                data = data & "<start>=" & Form1.List1.List(i) & vbCrLf
            End If
        Next i
        Print #1, data
    Close #1
    
    Open dirs For Output As #1
        data = ""
        Form1.List1.ListIndex = -1
        For i = 0 To Form1.List1.ListCount
            If Form1.List2.List(i) <> "" Then
                data = Form1.List2.List(i) & vbCrLf
                Print #1, data
            End If
        Next i
    Close #1
    
    Open descrip For Output As #1
        data = ""
        Form1.List1.ListIndex = -1
        For i = 0 To Form1.List1.ListCount
            If Form1.List3.List(i) <> "" Then
                data = Form1.List3.List(i) & vbCrLf
                Print #1, data
            End If
        Next i
    Close #1

    Form1.Text1.Text = "Ready"
    
End Sub
