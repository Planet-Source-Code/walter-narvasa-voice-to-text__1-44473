VERSION 5.00
Object = "{4E3D9D11-0C63-11D1-8BFB-0060081841DE}#1.0#0"; "HMM.DLL"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Speech 2 Text - HMM Algorithm"
   ClientHeight    =   1725
   ClientLeft      =   9825
   ClientTop       =   7230
   ClientWidth     =   2715
   Icon            =   "frmLoad.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   ScaleHeight     =   1725
   ScaleWidth      =   2715
   Begin ACTIVELISTENPROJECTLibCtl.HMMSR    HMMSR 
      Height          =   375
      Left            =   360
      OleObjectBlob   =   "frmLoad.frx":030A
      TabIndex        =   10
      Top             =   960
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Quit"
      Height          =   255
      Left            =   50
      TabIndex        =   8
      ToolTipText     =   "Quit"
      Top             =   1440
      Width           =   2655
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Training"
      Height          =   255
      Left            =   50
      TabIndex        =   7
      ToolTipText     =   "Train your voice for calibration on Speech to Text HMM Algorithm"
      Top             =   1200
      Width           =   2655
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Disable"
      Height          =   255
      Left            =   50
      TabIndex        =   2
      ToolTipText     =   "Enable/Disable the Speech to Text HMM Algorithm"
      Top             =   960
      Width           =   2655
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Add Word"
      Height          =   255
      Left            =   1360
      TabIndex        =   1
      ToolTipText     =   "Add a Speech to Text HMM Algorithm"
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Words List"
      Height          =   255
      Left            =   50
      TabIndex        =   0
      ToolTipText     =   "Remove and see the recognised Speech to Text HMM Algorithm"
      Top             =   720
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Speech Status:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   50
      TabIndex        =   9
      Top             =   0
      Width           =   2655
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   120
         TabIndex        =   6
         TabStop         =   0   'False
         ToolTipText     =   "The command recognised"
         Top             =   240
         Width           =   2415
      End
   End
   Begin VB.ListBox List3 
      Height          =   1425
      Left            =   120
      TabIndex        =   5
      Top             =   5280
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.ListBox List2 
      Height          =   1815
      Left            =   120
      TabIndex        =   4
      Top             =   3480
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.ListBox List1 
      Height          =   1230
      Left            =   120
      TabIndex        =   3
      Top             =   2280
      Visible         =   0   'False
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const SWP_NOMOVE = &H2
Private Const SWP_NOSIZE = &H1
Private Const HWND_TOPMOST = -1
Private Const HWND_NOTOPMOST = -2

Private Sub Form_Load()
    Dim junk, windir$
                       
    Text1.Text = ""
        
    windir = Space(144)
    junk = getwindir(windir, 144)
    windir = Trim(windir)
    i = InStr(windir$, vbNullChar)
    windir$ = Mid$(windir$, 1, i - 1)
    
    words = windir$ & "\words.txt"
    dirs = windir$ & "\dirs.txt"
    descrip = windir$ & "\desc.txt"
    
    test = Dir(words)
    If test = "" Then
        Open words For Output As #1
        Close #1
    End If
    
    test = Dir(dirs)
    If test = "" Then
        Open dirs For Output As #1
        Close #1
    End If
    
    test = Dir(descrip)
    If test = "" Then
        Open descrip For Output As #1
        Close #1
    End If
    
    Call loadfiles
    Load Form4
    Text1 = "Ready"
        
    SetWindowPos hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Call savefiles
    Set Form1 = Nothing
    Set Form2 = Nothing
    Set Form3 = Nothing
    Set Form4 = Nothing
    End
End Sub

Private Sub hmmsr_PhraseFinish(ByVal flags As Long, ByVal beginhi As Long, ByVal beginlo As Long, ByVal endhi As Long, ByVal endlo As Long, ByVal Phrase As String, ByVal parsed As String, ByVal results As Long)
    List1.ListIndex = -1
        
    For i = 0 To List1.ListCount
        If Phrase = "" Then
            List1.ListIndex = -1
            List2.ListIndex = -1
            List3.ListIndex = -1
            Text1 = "Not Recognised"
            Exit Sub
        End If
        If Phrase = List1.List(i) Then
            List1.ListIndex = i
            List2.ListIndex = i
            List3.ListIndex = i
            Text1 = List3.List(i)
            SendKeys List2.List(i)
        End If
    Next i
End Sub

Public Sub Command1_click()
    Form2.Show
End Sub

Public Sub Command2_Click()
    Form3.Show
End Sub

Public Sub Command3_Click()
    Select Case Command3.Caption
    Case Is = "Disable"
        HMMSR.Deactivate
        Command3.Caption = "Enable"
        Text1 = "Disabled"
        Form4.mnuDisable.Checked = False
    Case Is = "Enable"
        HMMSR.Activate
        Command3.Caption = "Disable"
        Text1 = "Ready"
        Form4.mnuDisable.Checked = True
    End Select
End Sub

Public Sub Command4_Click()
    Form5.Show
End Sub

Public Sub Command5_Click()
    End
End Sub

