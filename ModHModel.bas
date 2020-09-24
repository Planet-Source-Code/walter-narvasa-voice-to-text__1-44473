Attribute VB_Name = "ModHModel"

Option Explicit
Option Base 0

'#If Not _HMODEL_H_ Then
'#Const _HMODEL_H_  = True

'#If __cplusplus Then
#If False Then
'The following is an externally defined global variable
'extern "C" {  #endif

Public Const MACHASHSIZE = 1277

Public Const PTRHASHSIZE = 513

Public Const MINMIX = 0.00001

Public Const LMINMIX = -11.5

Public Const MINDLOGP = 0.000001

Public Const DLOGSCALE = -2371.8

Public Const DLOGZERO = 32767

#If False Then
'The following is a macro defined in C/C++.
'#define MixWeight(hset,weight) (weight)
#End If


#If False Then
'The following is a macro defined in C/C++.
'#define MixLogWeight(hset,weight) (weight<MINMIX ? LZERO : log(weight))
#End If


#If False Then
'The following is a macro defined in C/C++.
'#define MixFloor(hset)   ( MINMIX )
#End If


'Public Type ClearDepth     void ClearSeenFlags(HMMSet  hset
    isLoaded As Boolean
    fname As String
    fidx As Long
    next As MILink
'    GEND As enum _DurKind NULLD, POISSOND, GAMMAD, RELD,
'    DurKind As typedef enum _DurKind
'    DISCRETEHS As enum _HSetKind PLAINHS, SHAREDHS, TIEDHS,
'    HSetKind As typedef enum _HSetKind
'    mean As typedef struct SVector
    ckind As CovKind
    cov As Covariance
    gConst As Float
    rClass As Short
    mIdx As Long
    nUse As Long
    hook As ptr
'    weight As typedef struct float
    mpdf As MixPDF
'    cpdf As typedef MixtureElem
    tpdf As Vector
    dpdf As ShortVec
'    index As typedef struct short
    prob As Float
'    mixId As typedef struct LabId
    nMix As Short
    topM As Short
    mixes() As MixPDF
    maxP As LogFloat
    probs As TMProb
'    nMix As typedef struct int
    spdf As MixtureVector
    hook As ptr
'    weights As typedef struct SVector
    pdf As StreamElem
    dur As SVector
    sIdx As Long
    nUse As Long
    hook As ptr
    stateCounter As Long
'    info As typedef struct StateInfo
'    owner As typedef struct struct _HMMSet
    numStates As Short
    svec As StateElem
    dur As SVector
    transP As SMatrix
    tIdx As Long
    nUse As Long
    hook As ptr
'    HLink As typedef HMMDef
'    vecSize As typedef struct int
    blockSize As IntVec
    xform As SMatrix
    bias As SVector
    det As Float
    nUse As Long
'    xformName As typedef struct char
    mmfIdMask As String
    fname As String
    pkind As ParmKind
    preQual As Boolean
    xform As LinXForm
    nUse As Long
'    MLink As typedef struct _MacroDef
'    next As typedef struct _MacroDef MLink
    type As String
    fidx As Short
    id As LabId
    structure As ptr
'    next As typedef struct _PtrMap struct _PtrMap
    ptr As ptr
    m As MLink
'    hmem As typedef struct _HMMSet MemHeap
    firstElem As Boolean
    hmmSetId As String
    mmfNames As MILink
    numLogHMM As Long
    numPhyHMM As Long
    numFiles As Long
    numMacros As Long
    mtab As MLink
    pmap() As PtrMap
    allowTMods As Boolean
    optSet As Boolean
    vecSize As Short
'    swidth SMAX() As short
    pkind As ParmKind
    dkind As DurKind
    ckind As CovKind
    hsKind As HSetKind
'    tmRecs SMAX() As TMixRec
    numStates As Long
    numSharedStates As Long
    numMix As Long
    numSharedMix As Long
    numTransP As Long
'    ckUsage NUMCKIND() As Long
    xf As InputXForm
'    frame) As void QuantiseObservation(HMMSet  hset, Observation  obs, int
'    structure) As MLink NewMacro(HMMSet  hset, short fidx, char type, LabId id, Ptr
'    p) As void DeleteMacro(HMMSet  hset, MLink
'    structure) As void DeleteMacroStruct(HMMSet  hset, char type, Ptr
'    id) As MLink FindMacroName(HMMSet  hset, char type, LabId
'    structure) As MLink FindMacroStruct(HMMSet  hset, char type, Ptr
'    types) As Boolean HasMacros(HMMSet  hset, char
'    minVar) As void SetVFloor(HMMSet  hset, Vector  vFloor, float
'    hset) As void ApplyVFloor(HMMSet
'    hmm) As void PrintHMMProfile(FILE  f, HLink
'    hset) As void PrintHSetProfile(FILE  f, HMMSet
'    allowTMods) As void CreateHMMSet(HMMSet  hset, MemHeap  heap, Boolean
'    fname) As MILink AddMMF(HMMSet  hset, char
'    fname) As ReturnStatus MakeHMMSet(HMMSet  hset, char
'    hname) As ReturnStatus MakeOneHMM(HMMSet  hset, char
'    hmmExt) As ReturnStatus LoadHMMSet(HMMSet  hset, char  hmmDir, char
'    hset) As void ResetHMMSet(HMMSet
'    fname) As void SaveInOneFile(HMMSet  hset, char
'    binary) As ReturnStatus SaveHMMSet(HMMSet  hset, char  hmmDir, char  hmmExt, Boolean
'    fname) As ReturnStatus SaveHMMList(HMMSet  hset, char
'    flag) As Boolean IsSeen(int
'    flag) As void Touch(int
'    flag) As void Untouch(int
'    CLR_HMMS,CLR_STATES,CLR_STREAMS,CLR_ALL As typedef enum
End Type


#If False Then
'I couldn't handle the following:
'}  #endif
#End If


#End If


