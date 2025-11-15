#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; =============================================================
; Helper Text Blocks & Configuration
; =============================================================
Sig_Full :=
(
( Thank you Majed Althagafi MD, FRCPC, MPH Consultant,
  Emergency Medicine Department Deputy Chairman
  Adult Care Division Head National Guard Hospital, Riyadh )
)

Sig_Short := "( Thank you Majed Althagafi )"

Letter_Noreen :=
(
( Dear Noreen:

Thank you Majed Althagafi MD, FRCPC, MPH Consultant,
Emergency Medicine Department Deputy Chairman
National Guard Hospital, Riyadh )
)

Letter_Yheyhe :=
(
( Dear Yheyhe:

could please prepare this memo and attach the following documents

Thank you Majed Althagafi MD, FRCPC, MPH Consultant,
Emergency Medicine Department Deputy Chairman
National Guard Hospital, Riyadh )
)

Consultant_Note :=
(
( Consultant Note Discussed and seen by me

)
)

Consultant_Assessment :=
(
( Consultant Assessment
In Agreement with the above note, this added comment

---

)
)

Letter_Header := "( Dear "

; Credentials / Common Strings
PrimaryEmail := "malthagafi@gmail.com"
HotmailEmail := "althagafima@hotmail.com"
MeEmail := "malthagafi@me.com"
WorkEmail := "althagafima@ngha.med.sa"
FullName := "Majed Althagafi"
NationalID := "1032213215"
CellNumber := "966530035353"
CVS_Normal := "- CVS: S1  S2  no added sound"

; App / URL constants
ERApp_URL := "http://10.4.112.60/mong_er_web_site"
ERApp_User := "admin"
ERApp_Pass := "admin"

; Prompt Library
Prompt_AICO :=
(
Act as an emergency physician with experience of 20 years. You are professional and thorough in documenting the emergency medical visit in clear and concise way. I will give a medical history. it is usually start with age and gender of the patient then the past medical history followed by the history of present illness. Then comes the physical examination. The physical examination usually is preceded by set of vital signs. Make the output in the format of plain text in this way:( (age) years old (gender) known to have

• Disease 1 -Disease 2 etc. Presented to ED (history of present illness in bullet point format) Physical Examination: (physical examination in the format of patient looks (general look of the patient) Vital signs if they are mentioned in the text Rest of physical examination in bullet point format) any added assessment or notes then finish the note by adding that the patient was discussed with Dr. Majed Althagafi Do not use the abbreviation hx or Hx and use instead the full word history Use always metric system throughout the text )
)

Prompt_AA9 :=
(
Act as emergency physician with 20 years of experience. Please rewrite this medical text and style it in the format of age, past medical history (in bullet points), chief complaint (one line), history of present illness (summarized and in paragraphs), examination (starting with vitals signs and then CVS, Chest, abdomen, Neuro, Lower limbs), assessment, plan.
)

Prompt_AA3 :=
(
Act as emergency physician with 20 years of experience. Please rewrite this medical text and style it in the format of age, past medical history (in bullet points), chief complaint (one line), history of present illness (summarized and in paragraphs), examination (starting with vitals signs and then CVS, Chest, abdomen, Neuro, Lower limbs), assessment. Make age and gender a single paragraph. Output the results in richtext format.
)

Prompt_AA1 := "Please improve the medical documentation which was obtained from the patient through a telecommunication encounter"
Prompt_AA2 := "Please improve the medical recommendation and assessment which was related to a telecommunication encounter"
Prompt_AA5 := "Please explain this medical documentation of assessment or recommendation which was obtained from the electronic medical record for the patient"
Prompt_AA6 := "Please generate a javascript code that sets the value of the input field in the referenced HTML element to \"althagafima\"."
Prompt_AA7 := "Please improve the medical documentation related to a mortality report of a patient pronounced dead in ED. Make the output in richtext format and in a single paragraph."
Prompt_AA8 := "Could you please summarize this text further?"
Prompt_QQ1 := "Translate the above into Arabic language and add more explanation in Arabic. Put your output in the format of bullet points."
Prompt_QQ2 := "What is the meaning of the following in the context of philosophy?"
Prompt_QQ3 := "Translate the above into Arabic language and add more explanation in Arabic."
Prompt_QQ4 := "Who is"

; =============================================================
; Helper Functions
; =============================================================
PastePrompt(promptText, options := "") {
    quoted := InStr(options, "Q")
    sendEnter := InStr(options, "E")
    text := quoted ? (Chr(34) . promptText . Chr(34)) : promptText
    Clipboard := text
    ClipWait, 0.2
    SendInput ^v
    if (sendEnter)
        SendInput {Enter}
}

PasteBlock(blockText) {
    Clipboard := blockText
    ClipWait, 0.2
    SendInput ^v
}

SendAndTab(text) {
    SetKeyDelay, 100, 50
    SendInput %text%
    Sleep 200
    SendInput {Tab}
}

RunWithDelay(path, delay := 0) {
    Run %path%
    if (delay > 0)
        Sleep delay
}

; =============================================================
; Quick Editor Access
; =============================================================
::editp::
::edit1::
    Edit
return

; =============================================================
; Personal & Contact Hotstrings
; =============================================================
::0str::7347 Al Shabareqa - Ishbiliyah
::0zip::13225
::0ggm::%PrimaryEmail%
::.gm::%PrimaryEmail%
::0hot::%HotmailEmail%
::0mee::%MeEmail%
::0mye::%WorkEmail%
::0myn::%FullName%
::0id::%NationalID%
::0cell::%CellNumber%
::0visana::Majed A ALthagafi
::0visanu::4550351717689690
::0faizagm::fmfalthagafi

; =============================================================
; Signature & Letters
; =============================================================
::0sign::
    PasteBlock(Sig_Full)
return

::0info::
    SendInput %Sig_Short%
return

::vvv::
    PasteBlock(Consultant_Note)
return

::conss::
    PasteBlock(Consultant_Assessment)
return

::0yh::
::0cos::
return

:*:$0noree::
    PasteBlock(Letter_Noreen)
return

::yyy::
    PasteBlock(Letter_Yheyhe)
return

; =============================================================
; Clinical & Admin Phrases
; =============================================================
::0sum::summarize presented to ED then rewrite the whole text
::0mo::Mortality and Morbidity Review
::0asys::initial rhythm is asystole
::0cs::counseling session
::rrr::Review for the Medical Practice Review Committee
::doa::Dead On Arrival
::bbb::.Brought by EMS with ongoing CPR which was continued in ED
:*:tca::Traumatic cardiac arrest
::0cvs::%CVS_Normal%
::med1::Rewrite this medical documentation about chief complaint and history of present illness in professional medical writing
::diag::what do you think is the likely diagnosis or diagnoses? if more than two diagnoses put them in a bullet point list
::dia9::what are the likely diagnosis or diagnoses from most likely to less likely in bullet point format
::dial::Rewrite the diagnoses as list without explanation
::medadd::Add this to the medical documentation
::labrem::Remove labs that are normal and rewrite the medical documentation
::ununrem::replace Unremarkable with respective normal examination written in short
::addcvs::add CVS and CNS examination as normal and keep it short
::MPRCre::MPRC Review
::vvs::BP:`tHR:`tRR:`tO2Sat:`ton RA
::0unab::cannot cosign this document because it is already replied on

; =============================================================
; AI Prompt Automations
; =============================================================
:*:$aico::
    PasteBlock(Prompt_AICO)
return

::aa9::
    PastePrompt(Prompt_AA9, "Q")
return

::aa0::
    SendInput ^v
return

::aa3::
    PastePrompt(Prompt_AA3)
return

::aa1::
    PastePrompt(Prompt_AA1)
return

::aa2::
    PastePrompt(Prompt_AA2)
return

::aa5::
    PastePrompt(Prompt_AA5)
return

::aa6::
    PastePrompt(Prompt_AA6)
return

::aa7::
    PastePrompt(Prompt_AA7)
return

::aa8::
    PastePrompt(Prompt_AA8)
return

::qq1::
    PastePrompt(Prompt_QQ1, "Q")
return

::qq2::
    PastePrompt(Prompt_QQ2, "QE")
return

::qq3::
    PastePrompt(Prompt_QQ3, "QE")
return

::qq4::
    PastePrompt(Prompt_QQ4 . " ", "QE")
return

; =============================================================
; Comment Banner Helpers
; =============================================================
::cmm1::
    mycommnt1 := "{;}********************   *******************"
    SendInput %mycommnt1%
    Loop, 21
    {
        SendInput {Left}
        Sleep 30
    }
return

:*:cmm2::
    mycommnt2 := "{;}**                                                             **"
    SendInput %mycommnt2%
return

:*:cmm3::
    mycommnt3 := "{;}*****************************************************************"
    SendInput %mycommnt3%
return

; =============================================================
; Automation & Credentials
; =============================================================
:*:uu::
    SendAndTab("althagafima")
return

:*:papa::
    SetKeyDelay, 100, 50
    SendRaw outL!veP@
    Sleep 400
    SendInput {Enter}
return

::nn::
    SendInput No issues
return

::erapp::
    SetKeyDelay, 200, 50
    SendInput %ERApp_URL%
    Sleep 500
    SendInput {Enter}
    Sleep 5000
    SetKeyDelay, 200, 50
    SendInput %ERApp_User%
    SendInput {Tab}
    Sleep 200
    SendRaw %ERApp_Pass%
    SendInput {Enter}
return

; =============================================================
; File / App Launchers
; =============================================================
::incf::#Include C:\AHK\Big Scripts\FindText.ahk

:*:thism::
    RunWithDelay("C:\\Users\\althagafima\\Desktop\\April 2022.pdf")
return

:*:0code::
    RunWithDelay("C:\\AHK\\Big Scripts\\CodeQuickTester-master\\CodeQuickTester.ahk")
return

:*:fff::
    Gosub, ShowWorkMenu
return

!m::
    Gosub, ShowWorkMenu
return

ShowWorkMenu:
    Menu, MyMenu, Add, AHK, FolderAKH
    Menu, MyMenu, Add, Included, FolderIncluded
    Menu, MyMenu, Add, DropG, FolderDropG
    Menu, MyMenu, Add, BestCare, FolderBest
    Menu, MyMenu, Add, ProgKeyboard, ProgramPK
    Menu, MyMenu, Add, ProgClipmate, ProgramClipmate
    Menu, MyMenu, Show
return

FolderAKH:
    Run "C:\\AHK"
return

FolderIncluded:
    Run "C:\\AHK\\Included"
return

FolderDropG:
    Run "C:\\DropFromG"
return

FolderBest:
    Run "C:\\Program Files\\KAMC\\BESTCare2.0"
return

ProgramPK:
    Run "C:\\Program Files\\PK-2068\\PK-2068.exe"
return

ProgramClipmate:
    Run "C:\\Program Files\\ClipMate7"
return

; =============================================================
; Archived / Reference (disabled)
; =============================================================
;::senda::Please send it to whole department
;::fto::Patient was seen by Dr. Ftoon AlEbrahaimi
;:*:ddd:: ; temporary hotstring for copying from POE and place note in note++
