VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "HMM Algorithm - Voice to Text Recognition "
   ClientHeight    =   90
   ClientLeft      =   150
   ClientTop       =   675
   ClientWidth     =   4155
   Icon            =   "frmSystray.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   90
   ScaleWidth      =   4155
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu Menu 
      Caption         =   "File"
      Begin VB.Menu mnuWordlist 
         Caption         =   "Wordlist"
      End
      Begin VB.Menu mnuAddWord 
         Caption         =   "Add Word"
      End
      Begin VB.Menu mnuDisable 
         Caption         =   "Disable"
      End
      Begin VB.Menu mnuTraining 
         Caption         =   "Training"
      End
      Begin VB.Menu sep 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "Quit"
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Initialize()
    'This gets Loaded when your form starts
    try.cbSize = Len(try)
    try.hwnd = Me.hwnd
    try.uId = vbNull
    try.uFlags = NIF_ICON Or NIF_TIP Or NIF_MESSAGE
    try.uCallBackMessage = WM_MOUSEMOVE
    
    'To Change the Icon Displayed in the systray
    'Change the Forms Icon
    'This uses whatever Icon the Form Displays
    try.hIcon = Me.Icon
    
    'Tool Tip
    try.szTip = "This Deserves A 5" & vbNullChar
    
    Call Shell_NotifyIcon(NIM_ADD, try)
    Call Shell_NotifyIcon(NIM_MODIFY, try)
    
    'If u just want the systay icon to appear at start Hide the Form
    Me.Hide
End Sub

'Right Click and Dbl Click to launch an event
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Select Case X
            Case 7755:   'Right Click
                PopupMenu Menu  'The systray menu works the same as
                                'clicking file on the form. Anything
                                'you can do with a menu on the form
                                'you can do in the systray.
                
            
            Case 7725:    'Dbl Left Click
                MsgBox "Dbl Click in the systray needs event"
        End Select
End Sub

Private Sub mnuWordlist_Click()
    Call Form1.Command1_click
End Sub

Private Sub mnuAddWord_Click()
    Call Form1.Command2_Click
End Sub

Private Sub mnuDisable_Click()
    Call Form1.Command3_Click
End Sub

Private Sub mnuTraining_Click()
    Call Form1.Command4_Click
End Sub

Private Sub mnuQuit_Click()
    Call Form1.Command5_Click
End Sub

