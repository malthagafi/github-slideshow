;==============================================================
; Personal AutoHotkey Hotstrings
; Author: Majed Althagafi
; Description: Organized collection of personal hotstrings,
;              snippets, automation helpers, and prompts.
;==============================================================

;--------------------------------------------------------------
; Global Settings
;--------------------------------------------------------------
#NoEnv                ; Recommended for performance and security.
#SingleInstance Force ; Prevent multiple instances of the script.

;--------------------------------------------------------------
; Quick Edit Helpers
;--------------------------------------------------------------
::editp::
::edit1::
    Edit
return

;--------------------------------------------------------------
; Personal & Contact Information
;--------------------------------------------------------------
::0str::7347 Al Shabareqa - Ishbiliyah
::0zip::13225
::0ggm::malthagafi@gmail.com
::.gm::malthagafi@gmail.com
::0hot::althagafima@hotmail.com
::0mee::malthagafi@me.com
::0mye::althagafima@ngha.med.sa
::0myn::Majed Althagafi
::0id::1032213215
::0cell::966530035353
::0yh::
::0cs::counseling session
::0mo::Mortality and Morbidity Review
::0asys::initial rhythm is asystole
::0code::
    Run "C:\AHK\Big Scripts\CodeQuickTester-master\CodeQuickTester.ahk"
return

;--------------------------------------------------------------
; Signature Blocks & Closings
;--------------------------------------------------------------
::0sign::(
Thank you
Majed Althagafi MD, FRCPC, MPH
Consultant, Emergency Medicine Department
Deputy Chairman Adult Care Division Head
National Guard Hospital, Riyadh
)

::0info::(
Thank you
Majed Althagafi
)

::0unab::cannot cosign this document because it is already replied on
::0noree::(
Dear Noreen:

Thank you
Majed Althagafi MD, FRCPC, MPH
Consultant, Emergency Medicine Department
Deputy Chairman National Guard Hospital, Riyadh
)

::yyy::(
Dear Yheyhe:

Could you please prepare this memo and attach the following documents?

Thank you
Majed Althagafi MD, FRCPC, MPH
Consultant, Emergency Medicine Department
Deputy Chairman National Guard Hospital, Riyadh
)

;--------------------------------------------------------------
; Medical Documentation Snippets
;--------------------------------------------------------------
::0sum::summarize presented to ED then rewrite the whole text
::vvv::(
Consultant Note
Discussed and seen by me
)
::ssw::Seen and examined with Dr. Majed Althagafi
::conss::(
Consultant Assessment
In agreement with the above note, this added comment
---
)
::0cos::
::rrr::Review for the Medical Practice Review Committee
::doa::Dead On Arrival
::bbb::Brought by EMS with ongoing CPR which was continued in ED
::nn::
    SendInput No issues
return

::tca::Traumatic cardiac arrest
::med1::Rewrite this medical documentation about chief complaint and history of present illness in professional medical writing
::medadd::Add this to the medical documentation
::labrem::Remove labs that are normal and rewrite the medical documentation
::ununrem::replace "Unremarkable" with the respective normal examination written in short
::addcvs::add CVS and CNS examination as normal and keep it short
::0cvs::- CVS: S1 S2 no added sound
::diag::What do you think is the likely diagnosis or diagnoses? If more than two diagnoses, put them in a bullet point list.
::dia9::What are the likely diagnosis or diagnoses from most likely to less likely in bullet point format?
::dial::Rewrite the diagnoses as a list without explanation.

;--------------------------------------------------------------
; AI Prompt Templates
;--------------------------------------------------------------
:*:$aico::(
Act as an emergency physician with experience of 20 years. You are professional and thorough in documenting the emergency medical visit in a clear and concise way. I will give a medical history. It usually starts with age and gender of the patient then the past medical history followed by the history of present illness. Then comes the physical examination, usually preceded by a set of vital signs. Make the output in plain text in this way:

(age) years old (gender) known to have
• Disease 1
• Disease 2
Presented to ED
- History of present illness in bullet point format
Physical Examination:
- Patient looks (general look of the patient)
- Vital signs if mentioned in the text
- Rest of physical examination in bullet point format

Add any assessment or notes and finish the note by adding that the patient was discussed with Dr. Majed Althagafi. Do not use the abbreviation "hx" or "Hx"; use "history" instead. Use the metric system throughout the text.
)

::aa9::
    PasteText(
    "Act as an emergency physician with 20 years of experience. Please rewrite this medical text and style it in the format of "
    . "age, past medical history (in bullet points), chief complaint (one line), history of present illness (summarized and in "
    . "paragraphs), examination (starting with vital signs and then CVS, Chest, Abdomen, Neuro, Lower limbs), assessment, plan.")
return

::aa3::
(
Act as an emergency physician with 20 years of experience. Please rewrite this medical text and style it in the format of age, past medical history (in bullet points), chief complaint (one line), history of present illness (summarized and in paragraphs), examination (starting with vital signs and then CVS, Chest, Abdomen, Neuro, Lower limbs), assessment. Make age and gender a single paragraph. Output the results in rich-text format.
)
::aa1::Please improve the medical documentation which was obtained from the patient through a telecommunication encounter.
::aa2::Please improve the medical recommendation and assessment related to a telecommunication encounter.
::aa5::Please explain this medical documentation of assessment or recommendation which was obtained from the electronic medical record for the patient.
::aa6::Please generate a JavaScript code that sets the value of the input field in this HTML element to "althagafima". The HTML element is
::aa7::Please improve the medical documentation related to a mortality report of a patient who was pronounced dead in ED. Make the output rich-text format in a single paragraph. The documentation is
::aa8::Could you please summarize this text further?
::qq1::Translate the above into Arabic language and add more explanation in Arabic. Put the output in bullet point format.
::qq2::
    PasteText("What is the meaning of the following in the context of philosophy?", true)
return

::qq3::
    PasteText("Translate the above into Arabic language and add more explanation in Arabic.", true)
return

::qq4::
    PasteText("Who is", true)
return

::aa0::
    SendInput ^v
return

;--------------------------------------------------------------
; Application & Web Shortcuts
;--------------------------------------------------------------
:*:uu::
    SetKeyDelay, 100, 50
    Send althagafima
    Sleep 200
    SendInput {Tab}
return

:*:papa::
    SetKeyDelay, 100, 50
    SendRaw outL!veP@
    Sleep 400
    SendInput {Enter}
return

::erapp::
    SetKeyDelay, 200, 50
    SendInput http://10.4.112.60/mong_er_web_site
    Sleep 500
    SendInput {Enter}
    Sleep 5000
    SetKeyDelay, 200, 50
    SendInput admin
    SendInput {Tab}
    Sleep 200
    SendRaw admin
    SendInput {Enter}
return

:*:thism::
    Run "C:\Users\althagafima\Desktop\April 2022.pdf"
return

::incf::#Include C:\AHK\Big Scripts\FindText.ahk

;--------------------------------------------------------------
; Menu Launchers
;--------------------------------------------------------------
!m::
    Menu, MyMenu, Add, AHK Folder, FolderAHK
    Menu, MyMenu, Add, Included Folder, FolderIncluded
    Menu, MyMenu, Add, DropG Folder, FolderDropG
    Menu, MyMenu, Add, BestCare, FolderBest
    Menu, MyMenu, Add, ProgKeyboard, ProgramPK
    Menu, MyMenu, Add, ProgClipmate, ProgramClipmate
    Menu, MyMenu, Show
return

FolderAHK:
    Run "C:\AHK"
return

FolderIncluded:
    Run "C:\AHK\Included"
return

FolderDropG:
    Run "C:\DropFromG"
return

FolderBest:
    Run "C:\Program Files\KAMC\BESTCare2.0"
return

ProgramPK:
    Run "C:\Program Files\PK-2068\PK-2068.exe"
return

ProgramClipmate:
    Run "C:\Program Files\ClipMate7"
return

;--------------------------------------------------------------
; Comment Block Tools
;--------------------------------------------------------------
::cmm1::
    PasteText(";********************   *******************")
    Loop, 21
    {
        SendInput {Left}
        Sleep 30
    }
return

:*:cmm2::
    PasteText(";**                                                             **")
return

:*:cmm3::
    PasteText(";*****************************************************************")
return

;--------------------------------------------------------------
; Clipboard Helpers
;--------------------------------------------------------------
::0faizagm::fmfalthagafi

;--------------------------------------------------------------
; Utility Functions
;--------------------------------------------------------------
PasteText(text, sendEnter := false)
{
    ClipSaved := ClipboardAll
    Clipboard := ""
    Clipboard := text
    ClipWait, 0.5, 1
    if (ErrorLevel)
    {
        Clipboard := ClipSaved
        VarSetCapacity(ClipSaved, 0)
        return
    }
    SendInput ^v
    if (sendEnter)
        SendInput {Enter}
    Sleep 50
    Clipboard := ClipSaved
    VarSetCapacity(ClipSaved, 0)
}

;--------------------------------------------------------------
; Medical Vital Signs Template
;--------------------------------------------------------------
::vvs::BP:  HR:  RR:  O2Sat:  on RA

;--------------------------------------------------------------
; Recommendations & Maintenance Notes
;--------------------------------------------------------------
/*
Enhancement Suggestions:
1. Store reusable text (e.g., emails, addresses) in external INI/JSON files and load them with FileRead for easier updates.
2. Add #IfWinActive directives to scope certain hotstrings/macros to specific applications (e.g., documentation tools) and avoid accidental triggers elsewhere.
3. Convert frequently updated prompts into functions that accept parameters (e.g., patient name, location) to reduce editing effort.
4. Use Hotstring() options to standardize endings (e.g., `Hotstring("EndChars", " ")`) and to differentiate between automatic replacements and manual triggers.
5. Implement a simple GUI menu that lists categories, allowing quick discovery and execution without remembering every hotstring.
*/

return
