# 4 EBNF 句法

1. 用小写标识符代表语法结构，用大写标识符代表结构词类即终结符
2. 用并置表示连接，用 `|` 表示选择，用 `&` 同时表示二者（如 `A & B` 等价于 `A | B | A B`）
3. 用 `[]` 表示可选（$0$ 或 $1$ 次），用 `+` 表示重复（$1$ 或多次），用 `A *` 表示 `[A +]`（$0$ 或多次）
4. 用 `()` 改变优先级（`+ > & > |`），用 `//` 表示可省略终止符

    ```
    text               := [NAI +] [CMENE + * | (indicators & free +)] [joik-jek] text-1
    text-1             := [(I [jek | joik] [[stag] BO] *) + | NIhO + *] [paragraphs]
    paragraphs         := paragraph [NIhO + * paragraphs]
    paragraph          := (statement | fragment) [I * [statement | fragment]] +
    statement          := statement-1 
                          | prenex statement
    statement-1        := statement-2 [I joik-jek [statement-2]] +
    statement-2        := statement-3 [I [jek | joik] [stag] BO * [statement-2]]
    statement-3        := sentence 
                          | [tag] TUhE * text-1 /TUhU*/
    fragment           := ek * 
                          | gihek * 
                          | quantifier 
                          | NA * 
                          | terms /VAU*/ 
                          | prenex 
                          | relative-clauses 
                          | links 
                          | linkargs
    prenex             := terms ZOhU *
    sentence           := [terms [CU *]] bridi-tail
    subsentence        := sentence 
                          | prenex subsentence
    bridi-tail         := bridi-tail-1 [gihek [stag] KE * bridi-tail /KEhE*/ tail-terms]
    bridi-tail-1       := bridi-tail-2 [gihek * bridi-tail-2 tail-terms] +
    bridi-tail-2       := bridi-tail-3 [gihek [stag] BO * bridi-tail-2 tail-terms]
    bridi-tail-3       := selbri tail-terms 
                          | gek-sentence
    gek-sentence       := gek subsentence gik subsentence tail-terms 
                          | [tag] KE * gek-sentence /KEhE*/ 
                          | NA * gek-sentence
    tail-terms         := [terms] /VAU*/
    terms              := terms-1 +
    terms-1            := terms-2 [PEhE * joik-jek terms-2] +
    terms-2            := term [CEhE * term] +
    term               := sumti 
                          | (tag | FA *) (sumti | /KU*/) 
                          | termset 
                          | NA KU *
    termset            := NUhI * gek terms /NUhU*/ gik terms /NUhU*/ 
                          | NUhI * terms /NUhU*/
    sumti              := sumti-1 [VUhO * relative-clauses]
    sumti-1            := sumti-2 [(ek | joik) [stag] KE * sumti /KEhE*/]
    sumti-2            := sumti-3 [joik-ek sumti-3] +
    sumti-3            := sumti-4 [(ek | joik) [stag] BO * sumti-3]
    sumti-4            := sumti-5 
                          | gek sumti gik sumti-4
    sumti-5            := [quantifier] sumti-6 [relative-clauses] 
                          | quantifier selbri /KU*/ [relative-clauses]
    sumti-6            := (LAhE * | NAhE BO *) [relative-clauses] sumti /LUhU*/ 
                          | KOhA * 
                          | lerfu-string /BOI*/ 
                          | LA * [relative-clauses] CMENE + * 
                          | (LA | LE) * sumti-tail /KU*/ 
                          | LI * mex /LOhO*/ 
                          | ZO any-word * 
                          | LU text /LIhU*/ 
                          | LOhU any-word + LEhU * 
                          | ZOI any-word anything any-word *
    sumti-tail         := [sumti-6 [relative-clauses]] sumti-tail-1 
                          | relative-clauses sumti-tail-1
    sumti-tail-1       := [quantifier] selbri [relative-clauses] 
                          | quantifier sumti
    relative-clauses   := relative-clause [ZIhE * relative-clause] +
    relative-clause    := GOI * term /GEhU*/ 
                          | NOI * subsentence /KUhO*/
    selbri             := [tag] selbri-1
    selbri-1           := selbri-2 
                          | NA * selbri
    selbri-2           := selbri-3 [CO * selbri-2]
    selbri-3           := selbri-4 +
    selbri-4           := selbri-5 [joik-jek selbri-5 | joik [stag] KE * selbri-3 /KEhE*/] +
    selbri-5           := selbri-6 [(jek | joik) [stag] BO * selbri-5]
    selbri-6           := tanru-unit [BO * selbri-6] 
                          | [NAhE *] guhek selbri gik selbri-6
    tanru-unit         := tanru-unit-1 [CEI * tanru-unit-1] +
    tanru-unit-1       := tanru-unit-2 [linkargs]
    tanru-unit-2       := BRIVLA * 
                          | GOhA [RAhO] * 
                          | KE * selbri-3 /KEhE*/ 
                          | ME * sumti /MEhU*/ [MOI *] 
                          | (number | lerfu-string) MOI * 
                          | NUhA * mex-operator 
                          | SE * tanru-unit-2 
                          | JAI * [tag] tanru-unit-2 
                          | any-word (ZEI any-word) + 
                          | NAhE * tanru-unit-2 
                          | NU [NAI] * [joik-jek NU [NAI] *] + subsentence /KEI*/
    linkargs           := BE * term [links] /BEhO*/
    links              := BEI * term [links]
    quantifier         := number /BOI*/ 
                          | VEI * mex /VEhO*/
    mex                := mex-1 [operator mex-1] + 
                          | FUhA * rp-expression
    mex-1              := mex-2 [BIhE * operator mex-1]
    mex-2              := operand 
                          | [PEhO *] operator mex-2 + /KUhE*/
    rp-expression      := rp-operand rp-operand operator
    rp-operand         := operand 
                          | rp-expression
    operator           := operator-1 [joik-jek operator-1 | joik [stag] KE * operator /KEhE*/] +
    operator-1         := operator-2 
                          | guhek operator-1 gik operator-2 
                          | operator-2 (jek | joik) [stag] BO * operator-1
    operator-2         := mex-operator 
                          | KE * operator /KEhE*/
    mex-operator       := SE * mex-operator 
                          | NAhE * mex-operator 
                          | MAhO * mex /TEhU*/ 
                          | NAhU * selbri /TEhU*/ 
                          | VUhU *
    operand            := operand-1 [(ek | joik) [stag] KE * operand /KEhE*/]
    operand-1          := operand-2 [joik-ek operand-2] +
    operand-2          := operand-3 [(ek | joik) [stag] BO * operand-2]
    operand-3          := quantifier 
                          | lerfu-string /BOI*/ 
                          | NIhE * selbri /TEhU*/ 
                          | MOhE * sumti /TEhU*/ 
                          | JOhI * mex-2 + /TEhU*/ 
                          | gek operand gik operand-3 
                          | (LAhE * | NAhE BO *) operand /LUhU*/
    number             := PA [PA | lerfu-word] +
    lerfu-string       := lerfu-word [PA | lerfu-word] +
    lerfu-word         := BY 
                          | any-word BU 
                          | LAU lerfu-word 
                          | TEI lerfu-string FOI
    ek                 := [NA] [SE] A [NAI]
    gihek              := [NA] [SE] GIhA [NAI]
    jek                := [NA] [SE] JA [NAI]
    joik               := [SE] JOI [NAI] 
                          | interval 
                          | GAhO interval GAhO
    interval           := [SE] BIhI [NAI]
    joik-ek            := joik * 
                          | ek *
    joik-jek           := joik * 
                          | jek *
    gek                := [SE] GA [NAI] * 
                          | joik GI * 
                          | stag gik
    guhek              := [SE] GUhA [NAI] *
    gik                := GI [NAI] *
    tag                := tense-modal [joik-jek tense-modal] +
    stag               := simple-tense-modal [(jek | joik) simple-tense-modal] +
    tense-modal        := simple-tense-modal * 
                          | FIhO * selbri /FEhU*/
    simple-tense-modal := [NAhE] [SE] BAI [NAI] [KI] 
                          | [NAhE] (time [space] | space [time]) & CAhA [KI] 
                          | KI 
                          | CUhE
    time               := ZI & time-offset + & ZEhA [PU [NAI]] & interval-property +
    time-offset        := PU [NAI] [ZI]
    space              := VA & space-offset + & space-interval & (MOhI space-offset)
    space-offset       := FAhA [NAI] [VA]
    space-interval     := ((VEhA & VIhA) [FAhA [NAI]]) & space-int-props
    space-int-props    := (FEhE interval-property) +
    interval-property  := number ROI [NAI] 
                          | TAhE [NAI] 
                          | ZAhO [NAI]
    free               := SEI * [terms [CU *]] selbri /SEhU/ 
                          | SOI * sumti [sumti] /SEhU/ 
                          | vocative [relative-clauses] selbri [relative-clauses] /DOhU/ 
                          | vocative [relative-clauses] CMENE + * [relative-clauses] /DOhU/ 
                          | vocative [sumti] /DOhU/ 
                          | (number | lerfu-string) MAI 
                          | TO text /TOI/ 
                          | XI * (number | lerfu-string) /BOI/ 
                          | XI * VEI * mex /VEhO/
    vocative           := (COI [NAI]) + & DOI
    indicators         := [FUhE] indicator +
    indicator          := (UI | CAI) [NAI] 
                          | Y 
                          | DAhO 
                          | FUhO

    word               := [BAhE] any-word [indicators]
    any-word           := "any single word (no compound cmavo)"
    anything           := "any text at all, whether Lojban or not"
    null               := any-word SI 
                          | utterance SA 
                          | text SU
    ```
