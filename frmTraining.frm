VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form5 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Training - Speech to Text - HMM Algorithm "
   ClientHeight    =   3960
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7185
   Icon            =   "frmTraining.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   ScaleHeight     =   3960
   ScaleWidth      =   7185
   Begin VB.Frame Frame2 
      Caption         =   "Training 2/2 - Speech Accuracy Training"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   2040
      TabIndex        =   11
      Top             =   120
      Visible         =   0   'False
      Width           =   5055
      Begin VB.TextBox Text1 
         Height          =   1575
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   12
         Top             =   1320
         Width           =   4815
      End
      Begin VB.Timer Timer1 
         Enabled         =   0   'False
         Interval        =   500
         Left            =   4440
         Top             =   840
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Note: Please read the sentence."
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
         TabIndex        =   14
         Top             =   3000
         Width           =   2775
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "The quick brown fox jump over the lazy dog"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   870
         Left            =   120
         TabIndex        =   13
         Top             =   240
         Width           =   4815
         WordWrap        =   -1  'True
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   255
      Left            =   6000
      TabIndex        =   10
      Top             =   3600
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Next"
      Height          =   255
      Left            =   4920
      TabIndex        =   9
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "Training 1/2 - Voice Calibration:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3375
      Left            =   2040
      TabIndex        =   0
      Top             =   120
      Width           =   5055
      Begin VB.CommandButton cmdPlay 
         Caption         =   "Play"
         Enabled         =   0   'False
         Height          =   255
         Left            =   3000
         TabIndex        =   2
         ToolTipText     =   "Play the recording"
         Top             =   3000
         Width           =   975
      End
      Begin VB.CommandButton cmdStop 
         Caption         =   "Stop"
         Enabled         =   0   'False
         Height          =   255
         Left            =   2040
         TabIndex        =   3
         ToolTipText     =   "Stop recording or playing"
         Top             =   3000
         Width           =   975
      End
      Begin VB.Frame Frame4 
         Caption         =   "Statistics"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   4815
         Begin VB.Label StatisticsLabel 
            BackColor       =   &H00000000&
            Caption         =   " "
            ForeColor       =   &H0000FF00&
            Height          =   1455
            Left            =   120
            TabIndex        =   7
            ToolTipText     =   "Information about the recording"
            Top             =   240
            Width           =   4575
         End
      End
      Begin VB.Timer Timer2 
         Interval        =   200
         Left            =   4440
         Top             =   2880
      End
      Begin VB.CommandButton cmdRecord 
         Caption         =   "Record"
         Height          =   255
         Left            =   1080
         TabIndex        =   4
         ToolTipText     =   "Start recording immediate"
         Top             =   3000
         Width           =   975
      End
      Begin VB.CommandButton cmdReset 
         Caption         =   "Reset"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         ToolTipText     =   "To start a new recording and adjusting all settings"
         Top             =   3000
         Width           =   975
      End
      Begin VB.Frame Frame5 
         Caption         =   "Starting position for play (in milliseconds)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   5
         Top             =   2160
         Width           =   4815
         Begin MSComctlLib.Slider Slider1 
            Height          =   375
            Left            =   120
            TabIndex        =   8
            ToolTipText     =   "You can choose a beginning for playing the recording"
            Top             =   240
            Width           =   4575
            _ExtentX        =   8070
            _ExtentY        =   661
            _Version        =   393216
            LargeChange     =   500
            SmallChange     =   100
            TickStyle       =   3
         End
      End
   End
   Begin VB.Image Image1 
      BorderStyle     =   1  'Fixed Single
      Height          =   3735
      Left            =   120
      Picture         =   "frmTraining.frx":030A
      Stretch         =   -1  'True
      Top             =   120
      Width           =   1815
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Const AppName = "form5"

Private Sub Form_Load()
    WaveReset
    
    Rate = CLng(GetSetting("form5", "StartUp", "Rate", "110025"))
    Channels = CInt(GetSetting("form5", "StartUp", "Channels", "1"))
    Resolution = CInt(GetSetting("form5", "StartUp", "Resolution", "16"))
    WaveFileName = GetSetting("form5", "StartUp", "WaveFileName", "C:\Radio.wav")
    WaveAutomaticSave = GetSetting("form5", "StartUp", "WaveAutomaticSave", "True")

    WaveRecordingImmediate = True
    WaveRecordingReady = False
    WaveRecording = False
    WavePlaying = False
    
    'Be sure to change the Value property of the appropriate button!!
    'if you change the default values!
    
    WaveSet
    WaveRecordingStartTime = Now + TimeSerial(0, 15, 0)
    WaveRecordingStopTime = WaveRecordingStartTime + TimeSerial(0, 15, 0)
    WaveMidiFileName = ""
    WaveRenameNecessary = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    WaveClose
    Call SaveSetting("form5", "StartUp", "Rate", CStr(Rate))
    Call SaveSetting("form5", "StartUp", "Channels", CStr(Channels))
    Call SaveSetting("form5", "StartUp", "Resolution", CStr(Resolution))
    Call SaveSetting("form5", "StartUp", "WaveFileName", WaveFileName)
    Call SaveSetting("form5", "StartUp", "WaveAutomaticSave", CStr(WaveAutomaticSave))
    If WaveRenameNecessary Then
        Name WaveShortFileName As WaveLongFileName
        WaveRenameNecessary = False
        WaveShortFileName = ""
    End If
    End
End Sub


Private Sub cmdRecord_Click()
    Dim settings As String
    Dim Alignment As Integer
      
    Alignment = Channels * Resolution / 8
    
    settings = "set capture alignment " & CStr(Alignment) & " bitspersample " & CStr(Resolution) & " samplespersec " & CStr(Rate) & " channels " & CStr(Channels) & " bytespersec " & CStr(Alignment * Rate)
    WaveReset
    WaveSet
    WaveRecord
    WaveRecordingStartTime = Now
    cmdStop.Enabled = True   'Enable the STOP BUTTON
    cmdPlay.Enabled = False  'Disable the "PLAY" button
    cmdRecord.Enabled = False 'Disable the "RECORD" button
End Sub


Private Sub cmdStop_Click()
    WaveStop
    cmdPlay.Enabled = True  'Enable the "PLAY" button
    cmdStop.Enabled = False 'Disable the "STOP" button
    If WavePosition = 0 Then
        Slider1.Max = 10
    Else
        If WaveRecordingImmediate And (Not WavePlaying) Then Slider1.Max = WavePosition
        If (Not WaveRecordingImmediate) And WaveRecording Then Slider1.Max = WavePosition
    End If
    If WaveRecording Then WaveRecordingReady = True
    WaveRecordingStopTime = Now
    WaveRecording = False
    WavePlaying = False
End Sub

Private Sub cmdPlay_Click()
    WavePlayFrom (Slider1.Value)
    WavePlaying = True
    cmdStop.Enabled = True
    cmdPlay.Enabled = False
End Sub



Private Sub cmdReset_Click()
    Slider1.Max = 10
    Slider1.Value = 0
    Slider1.Refresh
    cmdRecord.Enabled = True
    cmdStop.Enabled = False
    cmdPlay.Enabled = False
    
    WaveReset
    
    Rate = CLng(GetSetting("form5", "StartUp", "Rate", "110025"))
    Channels = CInt(GetSetting("form5", "StartUp", "Channels", "1"))
    Resolution = CInt(GetSetting("form5", "StartUp", "Resolution", "16"))
    WaveFileName = GetSetting("form5", "StartUp", "WaveFileName", "C:\Radio.wav")
    WaveAutomaticSave = GetSetting("form5", "StartUp", "WaveAutomaticSave", "True")

    WaveRecordingImmediate = True
    WaveRecordingReady = False
    WaveRecording = False
    WavePlaying = False
    WaveMidiFileName = ""
    'Be sure to change the Value property of the appropriate button!!
    'if you change the default values!
    
    WaveSet
    If WaveRenameNecessary Then
        Name WaveShortFileName As WaveLongFileName
        WaveRenameNecessary = False
        WaveShortFileName = ""
    End If
End Sub

Private Sub Command1_click()
    If Frame1.Visible = True Then
        Command1.Caption = "Back"
        Frame1.Visible = False
        Frame2.Visible = True
        Timer1.Enabled = True
        Timer2.Enabled = False
        If Form1.Command3.Caption = "Enable" Then
            Form1.HMMSR.Activate
            Form1.Command3.Caption = "Disable"
            Form1.Text1 = "Ready"
            Form4.mnuDisable.Checked = True
        End If
    Else
        Command1.Caption = "Next"
        Frame1.Visible = True
        Frame2.Visible = False
        Timer1.Enabled = False
        Timer2.Enabled = True
    End If
End Sub



Private Sub Timer1_Timer()
    Text1.SetFocus
End Sub

Private Sub Timer2_Timer()
    Dim RecordingTimes As String
    Dim msg As String
    
    RecordingTimes = "Start time:  " & WaveRecordingStartTime & vbCrLf _
                    & "Stop time:  " & WaveRecordingStopTime
    
    WaveStatistics
    If Not WaveRecordingImmediate Then
        WaveStatisticsMsg = WaveStatisticsMsg & "Programmed recording"
        If WaveAutomaticSave Then
            WaveStatisticsMsg = WaveStatisticsMsg & " (automatic save)"
        Else
            WaveStatisticsMsg = WaveStatisticsMsg & " (manual save)"
        End If
        WaveStatisticsMsg = WaveStatisticsMsg & vbCrLf & vbCrLf & RecordingTimes
    End If
    StatisticsLabel.Caption = WaveStatisticsMsg
    
    WaveStatus
    If WaveStatusMsg <> Form5.Caption Then Form5.Caption = WaveStatusMsg
    If InStr(Form5.Caption, "stopped") > 0 Then
        cmdStop.Enabled = False
        cmdPlay.Enabled = True
    End If
    
    If (Now > WaveRecordingStartTime) _
            And (Not WaveRecordingReady) _
            And (Not WaveRecordingImmediate) _
            And (Not WaveRecording) Then
        WaveReset
        WaveSet
        WaveRecord
        WaveRecording = True
        cmdStop.Enabled = True   'Enable the STOP BUTTON
        cmdPlay.Enabled = False  'Disable the "PLAY" button
        cmdRecord.Enabled = False 'Disable the "RECORD" button
    End If
    
    If (Now > WaveRecordingStopTime) And (Not WaveRecordingReady) And (Not WaveRecordingImmediate) Then
        WaveStop
        cmdPlay.Enabled = True 'Enable the "PLAY" button
        cmdStop.Enabled = False 'Disable the "STOP" button
        If WavePosition > 0 Then
            Slider1.Max = WavePosition
        Else
            Slider1.Max = 10
        End If
        WaveRecording = False
        WaveRecordingReady = True
        If WaveAutomaticSave Then
            WaveFileName = "Radio_from_" & CStr(WaveRecordingStartTime) & "_to_" & CStr(WaveRecordingStopTime)
            WaveFileName = Replace(WaveFileName, ":", ".")
            WaveFileName = Replace(WaveFileName, " ", "_")
            WaveFileName = WaveFileName & ".wav"
            WaveSaveAs (WaveFileName)
            msg = "Recording has been saved" & vbCrLf
            msg = msg & "Filename: " & WaveFileName
            MsgBox (msg)
        Else
            msg = "Recording is ready" & vbCrLf
            msg = msg & "Don't forget to save recording..."
            MsgBox (msg)
        End If
    End If

End Sub

Private Sub Command2_Click()
    Me.Hide
End Sub

