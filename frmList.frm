VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Words List"
   ClientHeight    =   2865
   ClientLeft      =   3015
   ClientTop       =   2730
   ClientWidth     =   7785
   Icon            =   "frmList.frx":0000
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2865
   ScaleWidth      =   7785
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Height          =   255
      Left            =   6600
      TabIndex        =   2
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "Word List Options:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   50
      TabIndex        =   3
      Top             =   0
      Width           =   7695
      Begin VB.ListBox List1 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   1815
         Left            =   120
         TabIndex        =   6
         TabStop         =   0   'False
         ToolTipText     =   "The sound recognised"
         Top             =   480
         Width           =   2415
      End
      Begin VB.ListBox List2 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   1815
         Left            =   2640
         TabIndex        =   5
         TabStop         =   0   'False
         ToolTipText     =   "The description of the word"
         Top             =   480
         Width           =   2415
      End
      Begin VB.ListBox List3 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   1815
         Left            =   5160
         TabIndex        =   4
         TabStop         =   0   'False
         ToolTipText     =   "Word to Display on Speech to Text HMM Algorithm"
         Top             =   480
         Width           =   2415
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Sounds"
         Height          =   195
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   555
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Description"
         Height          =   195
         Left            =   2640
         TabIndex        =   8
         Top             =   240
         Width           =   825
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Word to Display"
         Height          =   195
         Left            =   5160
         TabIndex        =   7
         Top             =   240
         Width           =   1155
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Delete"
      Height          =   255
      Left            =   5520
      TabIndex        =   1
      Top             =   2520
      Width           =   1095
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "Note: Changes take effect immediately"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   120
      TabIndex        =   0
      Top             =   2520
      Width           =   3315
   End
End
Attribute VB_Name = "Form2"
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
    SetWindowPos hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE
End Sub

Private Sub List1_Click()
    List2.ListIndex = List1.ListIndex
    List3.ListIndex = List1.ListIndex
End Sub

Private Sub List2_Click()
    List1.ListIndex = List2.ListIndex
    List3.ListIndex = List2.ListIndex
End Sub

Private Sub list3_Click()
    List1.ListIndex = List3.ListIndex
    List2.ListIndex = List3.ListIndex
End Sub

Private Sub Command1_click()
    Form2.Hide
End Sub

Private Sub Command2_Click()
    Dim index As Integer
    index = List1.ListIndex
    On Error Resume Next
    List1.RemoveItem (index)
    List2.RemoveItem (index)
    List3.RemoveItem (index)
    Form1.List1.RemoveItem (index)
    Form1.List2.RemoveItem (index)
    Form1.List3.RemoveItem (index)
    
    Call savefiles
    Form1.List1.Clear
    Form1.List2.Clear
    Form1.List3.Clear
    Form2.List1.Clear
    Form2.List2.Clear
    Form2.List3.Clear
    Call loadfiles
    
End Sub

Private Sub List1_DblClick()
    MsgBox Form1.List2.List(List3.ListIndex)
End Sub

Private Sub List2_DblClick()
    MsgBox Form1.List2.List(List3.ListIndex)
End Sub

Private Sub List3_DblClick()
    MsgBox Form1.List2.List(List3.ListIndex)
End Sub
