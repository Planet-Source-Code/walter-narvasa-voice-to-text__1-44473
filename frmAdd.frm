VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Add Word"
   ClientHeight    =   1740
   ClientLeft      =   4680
   ClientTop       =   4275
   ClientWidth     =   6225
   Icon            =   "frmAdd.frx":0000
   LinkTopic       =   "Form3"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1740
   ScaleWidth      =   6225
   Begin VB.Frame Frame1 
      Caption         =   "Add Word Option:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   50
      TabIndex        =   2
      Top             =   0
      Width           =   6135
      Begin VB.TextBox Text1 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   1440
         TabIndex        =   5
         ToolTipText     =   $"frmAdd.frx":030A
         Top             =   240
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   1440
         TabIndex        =   4
         ToolTipText     =   "A short description here"
         Top             =   600
         Width           =   4575
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   1440
         TabIndex        =   3
         ToolTipText     =   "word to display"
         Top             =   960
         Width           =   4575
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Sound:"
         Height          =   195
         Left            =   780
         TabIndex        =   8
         Top             =   240
         Width           =   510
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Description:"
         Height          =   195
         Left            =   450
         TabIndex        =   7
         Top             =   600
         Width           =   840
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Word to Display:"
         Height          =   195
         Left            =   120
         TabIndex        =   6
         Top             =   960
         Width           =   1170
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   255
      Left            =   5040
      TabIndex        =   1
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Height          =   255
      Left            =   3960
      TabIndex        =   0
      Top             =   1440
      Width           =   1095
   End
End
Attribute VB_Name = "Form3"
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
    Text1 = "": Text2 = "": Text3 = ""
    SetWindowPos hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE + SWP_NOSIZE
End Sub

Private Sub Command1_click()
    Dim count, pos, i, length As Integer
    Dim line, test As Variant
        
    Form1.List1.AddItem (Text1.Text)
    Form1.List2.AddItem (Text3.Text)
    Form1.List3.AddItem (Text2.Text)
    
    Form2.List1.AddItem (Text1.Text)
    Form2.List2.AddItem (Text2.Text)
        
    Call savefiles
    Form1.List1.Clear
    Form1.List2.Clear
    Form1.List3.Clear
    Form2.List1.Clear
    Form2.List2.Clear
    Form2.List3.Clear
    Call loadfiles
    
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set Form3 = Nothing
End Sub
