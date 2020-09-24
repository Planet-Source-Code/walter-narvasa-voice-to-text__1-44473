Attribute VB_Name = "ModLWMap"
Option Explicit
Option Base 0

'#If Not _LWMAP_H Then
'#Const _LWMAP_H  = True

'#If __cplusplus Then
#If False Then
'The following is an externally defined global variable
'extern "C" {  #endif

Public Const BASEWORDNDX = 65536

'Public Type WordMap       void InitWMap(void)       void CreateWordMap(char  fn
    ndx As Long
    sort As Long
    count As Long
    auxptr As Ptr
    auxflt As Float
    auxint As Long
'    size As typedef struct int
    minId As Long
    maxId As Long
    tlb As Long
'    mem As typedef struct MemHeap
    name As String
    lang As String
    source As String
    seqno As Long
    htkEsc As Boolean
    isMap As Boolean
    hasCnts As Boolean
    isSorted As Boolean
    size As Long
    used As Long
    nClass As Long
    firstNdx As Long
    lastUsed As Long
    id As LabId
'    me As MapEntry
    wlt As LookupTable
    clt As LookupTable
End Type


#If False Then
'I couldn't handle the following:
'}  #endif
#End If


#End If


