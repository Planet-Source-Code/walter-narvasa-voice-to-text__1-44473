VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "HMMClass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit

Private mActivate As Integer
Private mDeactivate As Integer
Private mGrammarFromFile As String

Friend Property Let Activate(ByVal intActivate As Integer)
    mActivate = intActivate
End Property

Public Property Get Activate() As Integer
    Activate = mActivate
    If Activate = 1 Then
        Call FineTuneProb: Call StepForward
    End If
End Property

Friend Property Let Deactivate(ByVal intDeactivate As Integer)
    mDeactivate = intDeactivate
End Property

Public Property Get Deactivate() As Integer
    Deactivate = mDeactivate
End Property

Friend Property Let GrammarFromFile(ByVal strGrammarFromFile As String)
    mGrammarFromFile = strGrammarFromFile
End Property

Public Property Get GrammarFromFile() As String
    GrammarFromFile = mGrammarFromFile
    If GrammarFromFile = "" Then
        MsgBox "No Grammar Installed"
    Else
         Call FindBestPath(1)
    End If
End Property

