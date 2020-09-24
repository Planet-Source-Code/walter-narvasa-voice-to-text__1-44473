Attribute VB_Name = "ModHAudio"
Option Explicit
Option Base 0

'#If Not HAUDIO_H_ Then
'#Const HAUDIO_H_ = True
'
'#If cplusplus Then
'#If False Then

'The following is an externally defined global variable
'extern "C" {  #endif

Public Const NULLSIG = 0

Public Const HA_OUT_NONE = &H0

Public Const HA_OUT_SPEAKER = &H1

Public Const HA_OUT_PHONES = &H2

Public Const HA_OUT_LINE = &H4

Public Const HA_IN_NONE = &H0

Public Const HA_IN_MIC = &H1

Public Const HA_IN_LINE = &H2

Public Enum AudioInStatus
    AI_CLEARED
    AI_WAITSIG
    AI_SAMPLING
    AI_STOPPED
    AI_ERROR
End Enum


'#If False Then
'I couldn't handle the following:
'}  #endif
'#End If
