; Script by Josh Dillon. Ports the MacOS version of the custom polytonic
; Greek keyboard layout GreekKeys 2015 by Donald Mastronarde
; (https://classicalstudies.org/publications-and-research/about-greekkeys-2015)
; to Windows 11. Made public with permission.

; NB: This script requires the standard monotonic Greek keyboard layout
; in Windows 11 to be active. For best results, use a font with full coverage of
; polytonic Greek (e.g. BosporosU, New Athena Unicode).

; Tested on Windows 11 using
; AutoHotkey v1.1.37.01.

; Instructions for use: press the Option/Alt key together with a key in the
; number row, then a vowel or rho, to produce diacritics (breathings, accents
; and combinations thereof).

; Option/Alt + 1 = ΄
; Option/Alt + 2 = `
; Option/Alt + 3 = ῀
; Option/Alt + 4 = ᾿
; Option/Alt + 5 = ῾
; Option/Alt + 6 = ῎
; Option/Alt + 7 = ῞
; Option/Alt + 8 = ῍
; Option/Alt + 9 = ῝
; Option/Alt + 0 = ῏
; Option/Alt + - = ῟

; To add a breve to a vowel, type Option/Alt + =, then the vowel. To add
; a macron to a vowel, type Option/Alt + Shift + =, then the vowel.

; To produce breves and macrons in combination with other diacritics, type 
; Option/Alt + =, then Option/Alt + <number row key>, then the vowel
; (for breves) or Option/Alt + Shift + =, then Option/Alt + <number row key>,
; then the vowel (for macrons).

; For more information on key coverage and bindings, see the documentation
; accompanying GreekKeys 2015.

; Contextual variables
global layer1 := true
global layer2 := false

SendMode Input

; Keys unmodified by Option/Alt

; Remap Q
$SC010::Send, {U+03d9}
return
$+SC010::Send, {U+03d8}
return

; Remap W
$+SC011::Send, {U+03e1}
return

; Remap υ
$SC015::Send, {U+03B8}
return
$+SC015::Send, {U+0398}
return

; Remap Θ
$SC016::Send, {U+03C5}
return
$+SC016::Send, {U+03A5}
return

; Remap ;:
$SC027::Send, {U+003b}
return
$+SC027::Send, {U+00b7}
return

; Remap <
$+SC033::Send, {U+27e8}
return

; Remap >
$+SC034::Send, {U+27e9}
return

; Option/Alt + 

; Remap Q
$!SC010::Send, {U+03fb}
return

; Remap W
$!SC011::Send, {U+03dd}
return

; Remap E
$!SC012::Send, {U+0377}
return

; Remap R
$!SC013::Send, {U+0376}
return

; Remap T
$!SC014::Send, {U+2020}
return

; Remap U
$!SC016::Send, {U+00ad}
return

; Remap P
$!SC019::Send, {U+2248}
return

; Remap [
$!SC01A::Send, {U+00ab}
return

; Remap ]
$!SC01B::Send, {U+00bb}
return

; Remap A
$!SC01E::Send, {U+1fb3}
return

; Remap S
$!SC01F::Send, {U+03f2}
return

; Remap D
$!SC020::Send, {U+0373}
return

; Remap F
$!SC021::Send, {U+2260}
return

; Remap G
$!SC022::Send, {U+0371}
return

; Remap H
$!SC023::Send, {U+1fc3}
return

; Remap J
$!SC024::Send, {U+03f3}
return

; Remap K
$!SC025::Send, {U+03db}
return

; Remap L
$!SC026::Send, {U+03cf}
return

; Remap ;
$!SC027::Send, {U+003B}
return

; Remap '
$!SC028::Send, {U+201c}
return

; Remap \
$!SC02B::Send, {U+00a6}
return

; Remap Z
$!SC02C::Send, {U+00a7}
return

; Remap C
$!SC02E::Send, {U+0374}
return

; Remap V
$!SC02F::Send, {U+1ff3}
return

; Remap B
$!SC030::Send, {U+03d0}
return

; Remap N
$!SC031::Send, {U+2018}
return

; Remap M
$!SC032::Send, {U+0027}
return

; Remap /
$!SC035::Send, {U+002f}
return

; Option/Alt + Shift +

; Remap 5
$+!SC006::Send, {U+00b1}
return

; Remap 6
$+!SC007::Send, {U+00a7}
return

; Remap 7
$+!SC008::Send, {U+2012}
return

; Remap 8
$+!SC009::Send, {U+23d1}
return

; Remap 9
$+!SC00A::Send, {U+00d7}
return

; Remap -
$+!SC00C::Send, {U+2014}
return

; Remap Q
$+!SC010::Send, {U+03fa}
return

; Remap W
$+!SC011::Send, {U+03dc}
return

; Remap E
$+!SC012::Send, {U+ec3d}
return

; Remap R
$+!SC013::Send, {U+205d}
return

; Remap T
$+!SC014::Send, {U+2312}
return

; Remap Y
$+!SC015::Send, {U+2016}
return

; Remap U
$+!SC016::Send, {U+03e0}
return

; Remap I
$+!SC017::Send, {U+03da}
return

; Remap O
$+!SC018::Send, {U+03de}
return

; Remap P
$+!SC019::Send, {U+03df}
return

; Remap [
$+!SC01A::Send, {U+27e6}
return

; Remap ]
$+!SC01B::Send, {U+27e7}
return

; Remap A
$+!SC01E::Send, {U+1fbc}
return

; Remap S
$+!SC01F::Send, {U+03f9}
return

; Remap D
$+!SC020::Send, {U+0372}
return

; Remap G
$+!SC022::Send, {U+0370}
return

; Remap H
$+!SC023::Send, {U+1fcc}
return

; Remap J
$+!SC024::Send, {U+037f}
return

; Remap K
$+!SC025::Send, {U+03d7}
return

; Remap L
$+!SC026::Send, {U+00b7}
return

; Remap ;
$+!SC027::Send, {U+003a}
return

; Remap '
$+!SC028::Send, {U+201d}
return

; Remap \
$+!SC02B::Send, {U+2013}
return

; Remap Z
$+!SC02C::Send, {U+201e}
return

; Remap X
$+!SC02D::Send, {U+201f}
return

; Remap C
$+!SC02E::Send, {U+0375}
return

; Remap V
$+!SC02F::Send, {U+1ffc}
return

; Remap B
$+!SC030::Send, {U+02bc}
return

; Remap N
$+!SC031::Send, {U+230a}
return

; Remap M
$+!SC032::Send, {U+230b}
return

; Remap ,
$+!SC033::Send, {U+003c}
return

; Remap .
$+!SC034::Send, {U+003e}
return

; Remap /
$+!SC035::Send, {U+003f}
return

; Dead keys

#If layer1

; Tonos/oxia (΄): Option/Alt + 1, vowel
$!SC002::
    Send, {U+0384}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}{LAlt}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+03AC}              ; ά
        Case UserInput == "ᾳ":   Send, {U+1FB4}              ; ᾴ
        Case UserInput == "ε":   Send, {U+03AD}              ; έ
        Case UserInput == "η":   Send, {U+03AE}              ; ή
        Case UserInput == "ῃ":   Send, {U+1FC4}              ; ῄ
        Case UserInput == "ι":   Send, {U+03AF}              ; ί
        Case UserInput == "ο":   Send, {U+03CC}              ; ό
        Case UserInput == "υ":   Send, {U+03CD}              ; ύ
        Case UserInput == "ω":   Send, {U+03CE}              ; ώ
        Case UserInput == "ῳ":   Send, {U+1FF4}              ; ῴ
        Case UserInput == "Α":   Send, {U+0386}              ; Ά
        Case UserInput == "Ε":   Send, {U+0388}              ; Έ
        Case UserInput == "Η":   Send, {U+0389}              ; Ή
        Case UserInput == "Ι":   Send, {U+038A}              ; Ί
        Case UserInput == "Ο":   Send, {U+038C}              ; Ό
        Case UserInput == "Υ":   Send, {U+038E}              ; Ύ
        Case UserInput == "Ω":   Send, {U+038F}              ; Ώ
    }
Return

; Varia (`): Option/Alt + 2, vowel
$!SC003::
    Send, {U+1FEF}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F70}              ; ὰ
        Case UserInput == "ᾳ":   Send, {U+1FB2}              ; ᾴ
        Case UserInput == "ε":   Send, {U+1F72}              ; ὲ
        Case UserInput == "η":   Send, {U+1F74}              ; ὴ
        Case UserInput == "ῃ":   Send, {U+1FC2}              ; ῂ
        Case UserInput == "ι":   Send, {U+1F76}              ; ὶ
        Case UserInput == "ο":   Send, {U+1F78}              ; ὸ
        Case UserInput == "υ":   Send, {U+1F7A}              ; ὺ
        Case UserInput == "ω":   Send, {U+1F7C}              ; ὼ
        Case UserInput == "ῳ":   Send, {U+1FF2}              ; ῲ
        Case UserInput == "Α":   Send, {U+1FBA}              ; Ὰ
        Case UserInput == "Ε":   Send, {U+1FC8}              ; Ὲ
        Case UserInput == "Η":   Send, {U+1FCA}              ; Ὴ
        Case UserInput == "Ι":   Send, {U+1FDA}              ; Ὶ
        Case UserInput == "Ο":   Send, {U+1FF8}              ; Ὸ
        Case UserInput == "Υ":   Send, {U+1FEA}              ; Ὺ
        Case UserInput == "Ω":   Send, {U+1FFA}              ; Ὼ
    }
Return

; Perispomeni (῀): Option/Alt + 3, vowel
$!SC004::
    Send, {U+1FC0}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1FB6}              ; ᾶ
        Case UserInput == "ᾳ":   Send, {U+1FB7}              ; ᾷ
        Case UserInput == "ε":   Send, {U+E1B0}              ; 
        Case UserInput == "η":   Send, {U+1FC6}              ; ῆ
        Case UserInput == "ῃ":   Send, {U+1FC7}              ; ῇ
        Case UserInput == "ι":   Send, {U+1FD6}              ; ῖ
        Case UserInput == "ο":   Send, ο{U+0342}             ; 
        Case UserInput == "υ":   Send, {U+1FE6}              ; ῦ
        Case UserInput == "ω":   Send, {U+1FF6}              ; ῶ
        Case UserInput == "ῳ":   Send, {U+1FF7}              ; ῷ
    }
Return

; Psili (᾿): Option/Alt + 4, vowel/consonant
$!SC005::
    Send, {U+1FBF}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F00}              ; ἀ
        Case UserInput == "ᾳ":   Send, {U+1F80}              ; ᾀ
        Case UserInput == "ε":   Send, {U+1F10}              ; ἐ
        Case UserInput == "η":   Send, {U+1F20}              ; ἠ
        Case UserInput == "ῃ":   Send, {U+1F90}              ; ᾐ
        Case UserInput == "ι":   Send, {U+1F30}              ; ἰ
        Case UserInput == "ο":   Send, {U+1F40}              ; ὀ
        Case UserInput == "ρ":   Send, {U+1FE4}              ; ῤ
        Case UserInput == "υ":   Send, {U+1F50}              ; ὐ
        Case UserInput == "ω":   Send, {U+1F60}              ; ὠ
        Case UserInput == "ῳ":   Send, {U+1FA0}              ; ᾠ
        Case UserInput == "Α":   Send, {U+1F08}              ; Ἀ
        Case UserInput == "ᾼ":   Send, {U+1F88}              ; ᾈ
        Case UserInput == "Ε":   Send, {U+1F18}              ; Ἐ
        Case UserInput == "Η":   Send, {U+1F28}              ; Ἠ
        Case UserInput == "ῌ":   Send, {U+1F98}              ; ᾘ
        Case UserInput == "Ι":   Send, {U+1F38}              ; Ἰ
        Case UserInput == "Ο":   Send, {U+1F48}              ; Ὀ
        Case UserInput == "Ρ":   Send, {U+E1AB}              ; 
        Case UserInput == "Υ":   Send, {U+E1AC}              ; 
        Case UserInput == "Ω":   Send, {U+1F68}              ; Ὠ
        Case UserInput == "ῼ":   Send, {U+1FA8}              ; ᾨ
    }
Return

; Dasia (῾): Option/Alt + 5, vowel/consonant
$!SC006::
    Send, {U+1FFE}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F01}              ; ἁ
        Case UserInput == "ᾳ":   Send, {U+1F81}              ; ᾁ
        Case UserInput == "ε":   Send, {U+1F11}              ; ἑ
        Case UserInput == "η":   Send, {U+1F21}              ; ἡ
        Case UserInput == "ῃ":   Send, {U+1F91}              ; ᾑ
        Case UserInput == "ι":   Send, {U+1F31}              ; ἱ
        Case UserInput == "ο":   Send, {U+1F41}              ; ὁ
        Case UserInput == "ρ":   Send, {U+1FE5}              ; ῥ
        Case UserInput == "υ":   Send, {U+1F51}              ; ὑ
        Case UserInput == "ω":   Send, {U+1F61}              ; ὡ
        Case UserInput == "ῳ":   Send, {U+1FA1}              ; ᾡ
        Case UserInput == "Α":   Send, {U+1F09}              ; Ἁ
        Case UserInput == "ᾼ":   Send, {U+1F89}              ; ᾉ
        Case UserInput == "Ε":   Send, {U+1F19}              ; Ἑ
        Case UserInput == "Η":   Send, {U+1F29}              ; Ἡ
        Case UserInput == "ῌ":   Send, {U+1F99}              ; ᾙ
        Case UserInput == "Ι":   Send, {U+1F39}              ; Ἱ
        Case UserInput == "Ο":   Send, {U+1F49}              ; Ὁ
        Case UserInput == "Ρ":   Send, {U+1FEC}              ; Ῥ
        Case UserInput == "Υ":   Send, {U+1F59}              ; Ὑ
        Case UserInput == "Ω":   Send, {U+1F69}              ; Ὡ
        Case UserInput == "ῼ":   Send, {U+1FA9}              ; ᾩ
    }
Return

; Psili and oxia (῎): Option/Alt + 6, vowel
$!SC007::
    Send, {U+1FCE}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F04}              ; ἄ
        Case UserInput == "ᾳ":   Send, {U+1F84}              ; ᾄ
        Case UserInput == "ε":   Send, {U+1F14}              ; ἔ
        Case UserInput == "η":   Send, {U+1F24}              ; ἤ
        Case UserInput == "ῃ":   Send, {U+1F94}              ; ᾔ
        Case UserInput == "ι":   Send, {U+1F34}              ; ἴ
        Case UserInput == "ο":   Send, {U+1F44}              ; ὄ
        Case UserInput == "υ":   Send, {U+1F54}              ; ὔ
        Case UserInput == "ω":   Send, {U+1F64}              ; ὤ
        Case UserInput == "ῳ":   Send, {U+1FA4}              ; ᾤ
        Case UserInput == "Α":   Send, {U+1F0C}              ; Ἄ
        Case UserInput == "ᾼ":   Send, {U+1F8C}              ; ᾌ
        Case UserInput == "Ε":   Send, {U+1F1C}              ; Ἔ
        Case UserInput == "Η":   Send, {U+1F2C}              ; Ἤ
        Case UserInput == "ῌ":   Send, {U+1F9C}              ; ᾜ
        Case UserInput == "Ι":   Send, {U+1F3C}              ; Ἴ
        Case UserInput == "Ο":   Send, {U+1F4C}              ; Ὄ
        Case UserInput == "Υ":   Send, {U+E1AE}              ; 
        Case UserInput == "Ω":   Send, {U+1F6C}              ; Ὤ
        Case UserInput == "ῼ":   Send, {U+1FAC}              ; ᾬ
    }
Return

; Dasia and oxia (῞): Option/Alt + 7, vowel
$!SC008::
    Send, {U+1FDE}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F05}              ; ἅ
        Case UserInput == "ᾳ":   Send, {U+1F85}              ; ᾅ
        Case UserInput == "ε":   Send, {U+1F15}              ; ἕ
        Case UserInput == "η":   Send, {U+1F25}              ; ἥ
        Case UserInput == "ῃ":   Send, {U+1F95}              ; ᾕ
        Case UserInput == "ι":   Send, {U+1F35}              ; ἵ
        Case UserInput == "ο":   Send, {U+1F45}              ; ὅ
        Case UserInput == "υ":   Send, {U+1F55}              ; ὕ
        Case UserInput == "ω":   Send, {U+1F65}              ; ὥ
        Case UserInput == "ῳ":   Send, {U+1FA5}              ; ᾥ
        Case UserInput == "Α":   Send, {U+1F0D}              ; Ἅ
        Case UserInput == "ᾼ":   Send, {U+1F8D}              ; ᾍ
        Case UserInput == "Ε":   Send, {U+1F1D}              ; Ἕ
        Case UserInput == "Η":   Send, {U+1F2D}              ; Ἥ
        Case UserInput == "ῌ":   Send, {U+1F9D}              ; ᾝ
        Case UserInput == "Ι":   Send, {U+1F3D}              ; Ἵ
        Case UserInput == "Ο":   Send, {U+1F4D}              ; Ὅ
        Case UserInput == "Υ":   Send, {U+1F5D}              ; Ὕ
        Case UserInput == "Ω":   Send, {U+1F6D}              ; Ὥ
        Case UserInput == "ῼ":   Send, {U+1FAD}              ; ᾭ
    }
Return

; Psili and varia (῍): Option/Alt + 8, vowel
$!SC009::
    Send, {U+1FCD}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F02}              ; ἂ
        Case UserInput == "ᾳ":   Send, {U+1F82}              ; ᾂ
        Case UserInput == "ε":   Send, {U+1F12}              ; ἒ
        Case UserInput == "η":   Send, {U+1F22}              ; ἢ
        Case UserInput == "ῃ":   Send, {U+1F92}              ; ᾒ
        Case UserInput == "ι":   Send, {U+1F32}              ; ἲ
        Case UserInput == "ο":   Send, {U+1F42}              ; ὂ
        Case UserInput == "υ":   Send, {U+1F52}              ; ὒ
        Case UserInput == "ω":   Send, {U+1F62}              ; ὢ
        Case UserInput == "ῳ":   Send, {U+1FA2}              ; ᾢ
        Case UserInput == "Α":   Send, {U+1F0A}              ; Ἂ
        Case UserInput == "ᾼ":   Send, {U+1F8A}              ; ᾊ
        Case UserInput == "Ε":   Send, {U+1F1A}              ; Ἒ
        Case UserInput == "Η":   Send, {U+1F2A}              ; Ἢ
        Case UserInput == "ῌ":   Send, {U+1F9A}              ; ᾚ
        Case UserInput == "Ι":   Send, {U+1F3A}              ; Ἲ
        Case UserInput == "Ο":   Send, {U+1F4A}              ; Ὂ
        Case UserInput == "Υ":   Send, {U+E1AD}              ; 
        Case UserInput == "Ω":   Send, {U+1F6A}              ; Ὢ
        Case UserInput == "ῼ":   Send, {U+1FAA}              ; ᾪ
    }
Return

; Dasia and varia (῝): Option/Alt + 9, vowel
$!SC00A::
    Send, {U+1FDD}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F03}              ; ἃ
        Case UserInput == "ᾳ":   Send, {U+1F83}              ; ᾃ
        Case UserInput == "ε":   Send, {U+1F13}              ; ἓ
        Case UserInput == "η":   Send, {U+1F23}              ; ἣ
        Case UserInput == "ῃ":   Send, {U+1F93}              ; ᾓ
        Case UserInput == "ι":   Send, {U+1F33}              ; ἳ
        Case UserInput == "ο":   Send, {U+1F43}              ; ὃ
        Case UserInput == "υ":   Send, {U+1F53}              ; ὓ
        Case UserInput == "ω":   Send, {U+1F63}              ; ὣ
        Case UserInput == "ῳ":   Send, {U+1FA3}              ; ᾣ
        Case UserInput == "Α":   Send, {U+1F0B}              ; Ἃ
        Case UserInput == "ᾼ":   Send, {U+1F8B}              ; ᾋ
        Case UserInput == "Ε":   Send, {U+1F1B}              ; Ἓ
        Case UserInput == "Η":   Send, {U+1F2B}              ; Ἣ
        Case UserInput == "ῌ":   Send, {U+1F9B}              ; ᾛ
        Case UserInput == "Ι":   Send, {U+1F3B}              ; Ἳ
        Case UserInput == "Ο":   Send, {U+1F4B}              ; Ὃ
        Case UserInput == "Υ":   Send, {U+1F5B}              ; Ὓ
        Case UserInput == "Ω":   Send, {U+1F6B}              ; Ὣ
        Case UserInput == "ῼ":   Send, {U+1FAB}              ; ᾫ
    }
Return

; Psili and perispomeni (῏): Option/Alt + 0, vowel
$!SC00B::
    Send, {U+1FCF}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F06}              ; ἆ
        Case UserInput == "ᾳ":   Send, {U+1F86}              ; ᾆ
        Case UserInput == "ε":   Send, {U+E1B1}              ; 
        Case UserInput == "η":   Send, {U+1F26}              ; ἦ
        Case UserInput == "ῃ":   Send, {U+1F96}              ; ᾖ
        Case UserInput == "ι":   Send, {U+1F36}              ; ἶ
        Case UserInput == "ο":   Send, {U+E1C1}              ; 
        Case UserInput == "υ":   Send, {U+1F56}              ; ὖ
        Case UserInput == "ω":   Send, {U+1F66}              ; ὦ
        Case UserInput == "ῳ":   Send, {U+1FA6}              ; ᾦ
        Case UserInput == "Α":   Send, {U+1F0E}              ; Ἆ
        Case UserInput == "ᾼ":   Send, {U+1F8E}              ; ᾎ
        Case UserInput == "Ε":   Send, {U+E1BC}              ; 
        Case UserInput == "Η":   Send, {U+1F2E}              ; Ἦ
        Case UserInput == "ῌ":   Send, {U+1F9E}              ; ᾞ
        Case UserInput == "Ι":   Send, {U+1F3E}              ; Ἶ
        Case UserInput == "Ο":   Send, {U+E1CC}              ; 
        Case UserInput == "Υ":   Send, {U+E1AF}              ; 
        Case UserInput == "Ω":   Send, {U+1F6E}              ; Ὦ
        Case UserInput == "ῼ":   Send, {U+1FAE}              ; ᾮ
    }
Return

; Dasia and perispomeni (῟): Option/Alt + -, vowel
$!SC00C::
    Send, {U+1FDF}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "α":   Send, {U+1F07}              ; ἇ
        Case UserInput == "ᾳ":   Send, {U+1F87}              ; ᾇ
        Case UserInput == "ε":   Send, {U+E1B2}              ; 
        Case UserInput == "η":   Send, {U+1F27}              ; ἧ
        Case UserInput == "ῃ":   Send, {U+1F97}              ; ᾗ
        Case UserInput == "ι":   Send, {U+1F37}              ; ἷ
        Case UserInput == "ο":   Send, {U+E1C2}              ; 
        Case UserInput == "υ":   Send, {U+1F57}              ; ὗ
        Case UserInput == "ω":   Send, {U+1F67}              ; ὧ
        Case UserInput == "ῳ":   Send, {U+1FA7}              ; ᾧ
        Case UserInput == "Α":   Send, {U+1F0F}              ; Ἇ
        Case UserInput == "ᾼ":   Send, {U+1F8F}              ; ᾏ
        Case UserInput == "Ε":   Send, {U+E1BD}              ; 
        Case UserInput == "Η":   Send, {U+1F2F}              ; Ἧ
        Case UserInput == "ῌ":   Send, {U+1F9F}              ; ᾟ
        Case UserInput == "Ι":   Send, {U+1F3F}              ; Ἷ
        Case UserInput == "Ο":   Send, {U+E1CD}              ; 
        Case UserInput == "Υ":   Send, {U+1F5F}              ; Ὗ
        Case UserInput == "Ω":   Send, {U+1F6F}              ; Ὧ
        Case UserInput == "ῼ":   Send, {U+1FAF}              ; ᾯ
    }
Return

; Dialytika (¨): Option/Alt + Shift + 1, vowel
$+!SC002::
    Send, {U+00A8}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "ι":   Send, {U+03CA}              ; ϊ
        Case UserInput == "υ":   Send, {U+03CB}              ; ϋ
    }
Return

; Dialytika and tonos (΅): Option/Alt + Shift + 2, vowel
$+!SC003::
    Send, {U+0385}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "ι":   Send, {U+0390}              ; ΐ
        Case UserInput == "υ":   Send, {U+03B0}              ; ΰ
    }
Return

; Dialytika and varia (῭): Option/Alt + Shift + 3, vowel
$+!SC004::
    Send, {U+1FED}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "ι":   Send, {U+1FD2}              ; ῒ
        Case UserInput == "υ":   Send, {U+1FE2}              ; ῢ
    }
Return

; Dialytika and perispomeni (῁): Option/Alt + Shift + 4, vowel
$+!SC005::
    Send, {U+1FC1}{Shift down}{Left}{Shift up}
    StringCaseSense, On
    ; watch next input string
    Input, UserInput, L1, {BS}{Del}{Left}{Right}{Up}{Down}{Escape}{Space}
    name := GetKeyName(UserInput)
    e := SubStr(ErrorLevel, 8)
    Switch {
        Default:                Send, {Right}%UserInput%
        Case name = "Escape":   Send, {Right}
        Case name = "Space":    Send, {Right}
        Case e = "Up":          Send, {Right}{Up}
        Case e = "Down":        Send, {Right}{Down}
        Case e = "Left":        Send, {Right}{Left}
        Case e = "Right":       Send, {Right}{Right}
        Case e = "Backspace":   Send, {Right}{BS}
        Case UserInput == "ι":   Send, {U+1FD7}              ; ῗ
        Case UserInput == "υ":   Send, {U+1FE7}              ; ῧ
    }
Return

; Chained dead keys

; Breve (˘): Option/Alt + =, vowel; 
; Macron (ˉ): Option/Alt + Shift + =, vowel
; Initialise state variable
state := 0

; Start chained dead key sequence (breves)
$!SC00D::
    state := 1
    Send, {U+02D8}{Shift down}{Left}{Shift up}
    layer1 := false
    layer2 := true
    return

; Start chained dead key sequence (macrons)
$+!SC00D::
    state := 13
    Send, {U+02C9}{Shift down}{Left}{Shift up}
    layer1 := false
    layer2 := true
    return

#If

#If layer2

; Function to reset to layer1
ResetToLayer1() {
    global state, layer1, layer2
    state := 0
    layer1 := true
    layer2 := false
}

; Assign states
HandleAltN(stateValue, unicodeChar) {
    global state
if (state >= 1 && state <= 12) {  ; For states 1 to 12
        state := stateValue
        Send, % "{U+" unicodeChar "}{Shift down}{Left}{Shift up}"
    } else if (state >= 13 && state <= 24) {  ; For states 13 and above
        state := stateValue + 12  ; Adjust state for the second sequence
        Send, % "{U+" unicodeChar "}{Shift down}{Left}{Shift up}"
    } else {
        ; Invalid state detected, reset to layer1
        ResetToLayer1()
        Return
    }
}

; Assign send codes
$!SC002::HandleAltN(2, "0384")     ; 1 ΄ (14)
$!SC003::HandleAltN(3, "1FEF")     ; 2 ` (15)
$!SC004::HandleAltN(4, "1FC0")     ; 3 ῀ (16)
$!SC005::HandleAltN(5, "1FBF")     ; 4 ᾿ (17)
$!SC006::HandleAltN(6, "1FFE")     ; 5 ῾ (18)
$!SC007::HandleAltN(7, "1FCE")     ; 6 ῎ (19)
$!SC008::HandleAltN(8, "1FDE")     ; 7 ῞ (20)
$!SC009::HandleAltN(9, "1FCD")     ; 8 ῍ (21)
$!SC00A::HandleAltN(10, "1FDD")    ; 9 ῝ (22)
$!SC00B::HandleAltN(11, "1FCF")    ; 0 ῏ (23)
$!SC00C::HandleAltN(12, "1FDF")    ; - ῟ (24)

; Hotkey for α
$SC01E::
    if (state = 1) {
        Send, {U+1FB0}
    } else if (state = 13) {
        Send, {U+1FB1}
    } else {
        Switch state {
            Case 2:
                Send, {U+EB0A}
            Case 3:
                Send, {U+EAF8}
            Case 5:
                Send, {U+EAF9}
            Case 6:
                Send, {U+EB0B}
            Case 7:
                Send, {U+EB0C}
            Case 8:
                Send, {U+EAFB}
            Case 9:
                Send, {U+EAFA}
            Case 10:
                Send, {U+EAFC}
            Case 14:
                Send, {U+EB00}
            Case 15:
                Send, {U+EAF0}
            Case 16:
                Send, {U+EAF2}
            Case 17:
                Send, {U+EB04}
            Case 18:
                Send, {U+EB05}
            Case 19:
                Send, {U+EB07}
            Case 20:
                Send, {U+EB09}
            Case 21:
                Send, {U+EAF3}
            Case 22:
                Send, {U+EAF4}
            Case 23:
                Send, {U+EAF5}
            Case 24:
                Send, {U+EAF6}
            Default:
                ResetToLayer1()  ; If none of the cases match, reset
                return
        }
    }
    ResetToLayer1()  ; Always reset after sending the key
    return

; Hotkey for ε
$SC012::
    if (state = 1) {
        Send, {U+E1A9}
    } else if (state = 13) {
        Send, {U+E1B3}
    } else {
        Switch state {
            Case 14:
                Send, {U+E1B4}
            Case 15:
                Send, {U+E1B5}
            Case 16:
                Send, {U+EB27}
            Case 17:
                Send, {U+E1B6}
            Case 18:
                Send, {U+E1B7}
            Case 19:
                Send, {U+E1BA}
            Case 20:
                Send, {U+E1BB}
            Case 21:
                Send, {U+E1B8}
            Case 22:
                Send, {U+E1B9}
            Case 23:
                Send, {U+EB20}
            Case 24:
                Send, {U+EB21}
            Default:
                ResetToLayer1()  ; If none of the cases match, reset
                return
        }
    }
    ResetToLayer1()  ; Always reset after sending the key
    return

; Hotkey for ι
$SC017::
    if (state = 1) {
        Send, {U+1FD0}
    } else if (state = 13) {
        Send, {U+1FD1}
    } else {
        Switch state {
            Case 2:
                Send, {U+EB40}
            Case 3:
                Send, {U+EB44}
            Case 5:
                Send, {U+EB41}
            Case 6:
                Send, {U+EB43}
            Case 7:
                Send, {U+EB42}
            Case 8:
                Send, {U+EB47}
            Case 9:
                Send, {U+EB45}
            Case 10:
                Send, {U+EB48}
            Case 14:
                Send, {U+EB39}
            Case 15:
                Send, {U+EB38}
            Case 16:
                Send, {U+EB36}
            Case 17:
                Send, {U+EB3C}
            Case 18:
                Send, {U+EB3E}
            Case 19:
                Send, {U+EB3D}
            Case 20:
                Send, {U+EB3F}
            Case 21:
                Send, {U+EB54}
            Case 22:
                Send, {U+EB55}
            Case 23:
                Send, {U+EB57}
            Case 24:
                Send, {U+EB58}
            Default:
                ResetToLayer1()  ; If none of the cases match, reset
                return
        }
    }
    ResetToLayer1()  ; Always reset after sending the key
    return

; Hotkey for ο
$SC018::
    if (state = 1) {
        Send, {U+E1AA}
    } else if (state = 13) {
        Send, {U+E1C3}
    } else {
        Switch state {
            Case 14:
                Send, {U+E1C4}
            Case 15:
                Send, {U+E1C5}
            Case 16:
                Send, {U+EB5A}
            Case 17:
                Send, {U+E1C6}
            Case 18:
                Send, {U+E1C7}
            Case 19:
                Send, {U+E1CA}
            Case 20:
                Send, {U+E1CB}
            Case 21:
                Send, {U+E1C8}
            Case 22:
                Send, {U+E1C9}
            Case 23:
                Send, {U+EB5B}
            Case 24:
                Send, {U+EB5C}
            Default:
                ResetToLayer1()  ; If none of the cases match, reset
                return
        }
    }
    ResetToLayer1()  ; Always reset after sending the key
    return

; Hotkey for υ
$SC016::
    if (state = 1) {
        Send, {U+1FE0}
    } else if (state = 13) {
        Send, {U+1FE1}
    } else {
        Switch state {
            Case 2:
                Send, {U+EB81}
            Case 3:
                Send, {U+EB83}
            Case 5:
                Send, {U+EB84}
            Case 6:
                Send, {U+EB82}
            Case 7:
                Send, {U+EB85}
            Case 8:
                Send, {U+EB89}
            Case 9:
                Send, {U+EB88}
            Case 10:
                Send, {U+EB8A}
            Case 14:
                Send, {U+EB7A}
            Case 15:
                Send, {U+EB6F}
            Case 16:
                Send, {U+EB70}
            Case 17:
                Send, {U+EB7D}
            Case 18:
                Send, {U+EB7E}
            Case 19:
                Send, {U+EB7F}
            Case 20:
                Send, {U+EB80}
            Case 21:
                Send, {U+EB71}
            Case 22:
                Send, {U+EB75}
            Case 23:
                Send, {U+EB77}
            Case 24:
                Send, {U+EB78}
            Default:
                ResetToLayer1()  ; If none of the cases match, reset
                return
        }
    }
    return
#If