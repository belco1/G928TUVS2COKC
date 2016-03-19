.class public Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadKoreanInputModule.java"


# instance fields
.field private final mBackupHangul:Ljava/lang/StringBuilder;

.field private mComposeableAddStroke:[C

.field private mComposeableDoubleUp:[C

.field private mComposeableVowel:[C

.field private mComposedisableAddStroke:[[C

.field private mIndexOfKey:I

.field private mIsTappingMultiTapKey:Z

.field private mIsTraceInput:Z

.field protected mMultitap:Lcom/ime/framework/input/InputModule$Timer;

.field private mReplaceVowel:[C


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    new-array v0, v3, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    new-instance v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule$1;-><init>(Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;)V

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    return-void

    :array_0
    .array-data 2
        0x315cs
        0x314fs
        0x3153s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x314fs
        0x3163s
        0x3151s
        0x3163s
        0x3153s
        0x3163s
        0x3155s
        0x3163s
        0x3157s
        0x3163s
        0x3157s
        0x314fs
        0x315cs
        0x3163s
        0x315cs
        0x3153s
        0x3161s
        0x3163s
    .end array-data

    :array_2
    .array-data 2
        0x3131s
        0x314bs
        0x3134s
        0x3137s
        0x314cs
        0x3141s
        0x3142s
        0x314ds
        0x3145s
        0x3148s
        0x314as
        0x3147s
        0x314es
        0x314fs
        0x3151s
        0x3153s
        0x3155s
        0x3157s
        0x315bs
        0x315cs
        0x3160s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x3157s
        0x314fs
    .end array-data

    :array_4
    .array-data 2
        0x315cs
        0x3153s
    .end array-data

    :array_5
    .array-data 2
        0x3131s
        0x3132s
        0x3137s
        0x3138s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3148s
        0x3149s
    .end array-data
.end method

.method private chunjyinMultitap(Landroid/view/inputmethod/InputConnection;I[IZZI)V
    .locals 29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    move v3, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v22

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v26

    const/16 v27, 0x40

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    const/4 v15, 0x0

    const/16 v26, 0x119e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v26, 0x11a2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->clearCandidateList()V

    if-eqz p1, :cond_0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_8

    if-lez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_21

    const/16 v26, 0x119e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_21

    const/16 v26, 0x11a2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_21

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    if-eqz p4, :cond_1e

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setVerbatimToEngine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    :cond_3
    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    if-nez p5, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v26

    if-lez v26, :cond_23

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    :goto_3
    if-nez v12, :cond_4

    if-eq v3, v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->removeMessageForMSG_KEY_SENT_TEXT_BY_INPUTCONNECTION()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v28, 0x1

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    return-void

    :cond_7
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->clearCandidateList()V

    if-eqz p1, :cond_0

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosNextText:I

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz p5, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v26, v0

    if-eqz v26, :cond_15

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    const/16 v16, -0xff

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_a

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    :cond_a
    const/16 v26, 0x3

    move/from16 v0, p6

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    const/16 v26, 0x3150

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    const/16 v26, 0x3152

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    const/16 v26, 0x3154

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    const/16 v26, 0x3156

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    :cond_b
    const/4 v14, 0x1

    :cond_c
    const/16 v26, 0x119e

    move/from16 v0, p2

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-eqz v14, :cond_12

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    move/from16 v26, v0

    aget p2, p3, v26

    :cond_e
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/16 v26, 0x3

    move/from16 v0, p6

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    move/from16 v26, v0

    const/16 v27, 0x314f

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    move/from16 v26, v0

    const/16 v27, 0x3153

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    move/from16 v26, v0

    const/16 v27, 0x3163

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    move/from16 v26, v0

    const/16 v27, 0x3157

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    move/from16 v26, v0

    const/16 v27, 0x315c

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v26

    move/from16 v0, v26

    if-le v0, v8, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    move/from16 p2, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->resetMultiTap()V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_2

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v26

    if-nez v26, :cond_2

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_14

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    if-eqz p1, :cond_11

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    const/16 v26, 0x2

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_11
    const/4 v12, 0x1

    invoke-static/range {v21 .. v21}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    const/16 v26, 0x3

    move/from16 v0, p6

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    move/from16 v26, v0

    aget v26, p3, v26

    const/16 v27, 0x3163

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    add-int/lit8 v26, v19, -0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_13
    if-lez v19, :cond_d

    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_14
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_1

    :cond_15
    const/16 v26, 0x1

    move/from16 v0, p6

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v26

    if-nez v26, :cond_18

    const/4 v11, 0x0

    const-string v23, ""

    if-eqz p1, :cond_18

    new-instance v26, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v26 .. v26}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v10, 0x0

    if-eqz v11, :cond_17

    iget-object v0, v11, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v26, v0

    if-ltz v26, :cond_17

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    move/from16 v26, v0

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_17

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v26, v0

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v27, v0

    add-int v10, v26, v27

    iget-object v0, v11, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    iget v0, v11, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v28, v0

    invoke-interface/range {v26 .. v28}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_1c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v17, v26, -0x1

    :goto_5
    if-ltz v17, :cond_16

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v26

    if-nez v26, :cond_1b

    :cond_16
    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_17

    add-int/lit8 v26, v25, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v26

    if-eqz v26, :cond_17

    move/from16 v0, v25

    if-lt v10, v0, :cond_1d

    sub-int v26, v10, v25

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1, v10}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-interface/range {p1 .. p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v26

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v26, v0

    if-eqz v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    :cond_19
    if-eqz p1, :cond_1a

    if-nez p5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v26

    if-lez v26, :cond_1a

    if-lez v7, :cond_1a

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->getLastInputProcess()I

    move-result v26

    sget v27, Lcom/ime/framework/repository/InputStatus;->INPUT_PROCESS_TOUCH:I

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/4 v12, 0x1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_5

    :cond_1c
    const-string v23, ""

    goto/16 :goto_6

    :cond_1d
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_7

    :cond_1e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v19

    if-lez v19, :cond_1f

    add-int/lit8 v26, v19, -0x1

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    const/4 v12, 0x1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    :cond_20
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v26

    invoke-static/range {v26 .. v26}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_2

    :cond_21
    if-eqz p4, :cond_3

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v26

    if-nez v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setVerbatimToEngine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    goto/16 :goto_2

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    goto/16 :goto_3
.end method

.method private chunjyinMultitapByTrace(Landroid/view/inputmethod/InputConnection;[II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetPredictionWord()V

    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->cancelPreviewTrace()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetTimeoutComposingLength()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNotSpaceFrontOfCursor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetPredictionWord()V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    goto :goto_0

    :cond_4
    const-string v0, "SamsungIME"

    const-string v1, "mAutoSpaceController is null. Skip disableSetupAutoSpace."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private countStroke(C)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x314f
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isConsonant(I)Z
    .locals 1

    const/16 v0, 0x3131

    if-lt p0, v0, :cond_0

    const/16 v0, 0x314e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMedialVowel(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x314f

    if-lt p1, v1, :cond_0

    const/16 v1, 0x3163

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNaragulSpecialKey(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3130

    if-eq p1, v1, :cond_0

    const/16 v1, 0x318f

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isNotSpaceFrontOfCursor()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const-string v0, ".,?!"

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".,?!"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private naragulMultitap(Landroid/view/inputmethod/InputConnection;I[IZZ)V
    .locals 21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    move v3, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v15

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->clearCandidateList()V

    if-eqz p1, :cond_0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v11}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_9

    if-lez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v18

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    :goto_0
    return-void

    :cond_2
    const/16 v18, 0x3130

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x318f

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    const/16 v18, 0x119e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v18, 0x11a2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    if-eqz p4, :cond_14

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setVerbatimToEngine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0xa0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v18

    sget-object v19, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->SNOTE_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/4 v9, 0x0

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    if-eqz p1, :cond_16

    if-nez p5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v18

    if-lez v18, :cond_16

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    :goto_3
    if-nez v9, :cond_6

    if-eq v3, v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->removeMessageForMSG_KEY_SENT_TEXT_BY_INPUTCONNECTION()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosNextText:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_b
    if-eqz p5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x119e

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_c

    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0, v13}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    move/from16 v18, v0

    aget p2, p3, v18

    :cond_d
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    if-nez p4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_3

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz p1, :cond_f

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/4 v9, 0x1

    invoke-static {v14}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_f
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_1

    :cond_10
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_11

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    :cond_11
    move/from16 v0, p2

    int-to-char v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceNaragul(Ljava/lang/StringBuilder;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v18

    if-eqz v18, :cond_13

    if-nez p4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v18

    if-nez v18, :cond_13

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_13

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/4 v9, 0x1

    invoke-static {v14}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_1

    :cond_14
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v13

    if-lez v13, :cond_15

    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    invoke-static {v0, v13}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    const/4 v9, 0x1

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_2

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    goto/16 :goto_3
.end method

.method private processBackSpaceKey()V
    .locals 13

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v6, ""

    if-eqz v3, :cond_3

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, ""

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v8

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetPredictionWord()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v10

    invoke-interface {v10}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v10

    const/4 v11, -0x5

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_4
    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_6

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, -0x5

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->countStroke(C)I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->deleteLastJamoInComposing()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v11, 0x5dc

    invoke-virtual {p0, v10, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_8

    :cond_7
    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, -0x5

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_9

    if-lez v8, :cond_a

    :cond_9
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setPredictionWord(Z)V

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getDeleteCount()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v10

    sget-object v11, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v10, v11, :cond_b

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getLastWordDividerIndex()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v10, 0x12c

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initWordDividerIndexList()V

    const/16 v10, 0x43

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    :cond_c
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequence(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_11

    :cond_e
    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, -0x5

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_f

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v1, v10, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_10

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_10
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v11, 0x5dc

    invoke-virtual {p0, v10, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getDeleteCount()I

    move-result v10

    const/16 v11, 0x14

    if-le v10, v11, :cond_12

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v10

    sget-object v11, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v10, v11, :cond_12

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getLastWordDividerIndex()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface {v3, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initWordDividerIndexList()V

    const/16 v10, 0x43

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetPredictionWord()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processMultiTap(I[I)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v7, v10

    :goto_1
    iput-boolean v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v6

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setIsTappingMultiTapKey(Landroid/view/inputmethod/InputConnection;I[IZZ)I

    move-result p1

    if-ne v6, v10, :cond_4

    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    if-le v0, v11, :cond_6

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_6

    move v8, v10

    :goto_2
    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    if-le v0, v11, :cond_4

    :cond_4
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    packed-switch v6, :pswitch_data_0

    if-eqz v7, :cond_7

    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    if-le v0, v11, :cond_7

    invoke-direct {p0, v1, p2, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->chunjyinMultitapByTrace(Landroid/view/inputmethod/InputConnection;[II)V

    :goto_3
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceInput:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_5
    move v7, v9

    goto/16 :goto_1

    :cond_6
    move v8, v9

    goto :goto_2

    :pswitch_0
    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->naragulMultitap(Landroid/view/inputmethod/InputConnection;I[IZZ)V

    goto :goto_3

    :cond_7
    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->chunjyinMultitap(Landroid/view/inputmethod/InputConnection;I[IZZI)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private processSingleTap(I[I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "HANGUL_DELETE_LENGTH"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    if-eqz v3, :cond_0

    invoke-interface {v3, v2, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "HANGUL_DELETE_LENGTH"

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ltz v4, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :goto_1
    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 20

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    const/4 v10, 0x0

    const/4 v12, -0x1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v10, 0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v17 .. v17}, Lcom/ime/framework/input/ComposingTextManager;->codePointAt(I)I

    move-result v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_4

    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isEnableAutoCorrection(C)Z

    move-result v17

    if-eqz v17, :cond_5

    if-eqz v10, :cond_1

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v6, v0, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_1

    if-eqz v10, :cond_5

    const/16 v17, 0x20

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-nez v7, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v7, v2, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[II)Z

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    const/16 v17, 0xa

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->sendEnterKeyHandle()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v17

    if-nez v17, :cond_4

    :cond_6
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    const/16 v17, 0x20

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v17

    if-nez v17, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_a

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->countStroke(C)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->splitStroke(C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearningKorPhonpad(Ljava/lang/StringBuilder;)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    :cond_c
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v11

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v9

    if-eqz v11, :cond_e

    invoke-virtual/range {p0 .. p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_10

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v6, v0, :cond_10

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v6, v0, :cond_10

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v6, v0, :cond_f

    if-nez v9, :cond_10

    :cond_f
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    if-eqz v9, :cond_14

    :cond_10
    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetTimeoutComposingLength()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    const/16 v17, 0x20

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_12

    invoke-static {v12}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isConsonant(I)Z

    move-result v17

    if-nez v17, :cond_12

    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v17

    if-nez v17, :cond_14

    const/16 v17, 0x20

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->resetMultiTap()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_2

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_15
    move/from16 v0, p1

    int-to-char v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, ".,?!-/:;)]}\u061b\u060c\u061f\u06d4\u0964\u0589\u055c\u058a.\u055e\u17d4\u17d6"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    :cond_16
    const/16 v17, 0x20

    invoke-static/range {v17 .. v17}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_17
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method private replaceNaragul(Ljava/lang/StringBuilder;)Z
    .locals 12

    const/16 v11, 0x318f

    const/16 v10, 0x3130

    const/4 v9, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, v9, :cond_d

    const/4 v2, 0x0

    add-int/lit8 v7, v5, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-direct {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    array-length v7, v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    add-int/lit8 v8, v2, 0x1

    aget-char v7, v7, v8

    if-ne v4, v7, :cond_5

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableVowel:[C

    array-length v7, v7

    if-lt v2, v7, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-ne v4, v10, :cond_7

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    array-length v7, v7

    if-ge v2, v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_6

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    array-length v7, v7

    if-lt v2, v7, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_7

    const/4 v7, 0x2

    if-le v5, v7, :cond_7

    add-int/lit8 v7, v5, -0x3

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    array-length v7, v7

    if-ge v3, v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    aget-object v7, v7, v3

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-ne v1, v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    aget-object v7, v7, v3

    aget-char v7, v7, v9

    if-ne v6, v7, :cond_4

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-ne v4, v11, :cond_9

    const/4 v2, 0x0

    :goto_3
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    array-length v7, v7

    if-ge v2, v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_b

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    array-length v7, v7

    if-lt v2, v7, :cond_9

    const/4 v0, 0x1

    :cond_9
    const/4 v2, 0x0

    :goto_4
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    array-length v7, v7

    if-ge v2, v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    aget-char v7, v7, v2

    if-ne v6, v7, :cond_c

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    add-int/lit8 v8, v2, 0x1

    aget-char v7, v7, v8

    if-ne v4, v7, :cond_c

    add-int/lit8 v7, v5, -0x1

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mReplaceVowel:[C

    add-int/lit8 v9, v2, 0x2

    aget-char v8, v8, v9

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v0, 0x0

    :cond_a
    :goto_5
    return v0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    add-int/lit8 v2, v2, 0x3

    goto :goto_4

    :cond_d
    if-ne v5, v9, :cond_a

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_e

    if-ne v4, v11, :cond_a

    :cond_e
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private setIsTappingMultiTapKey(Landroid/view/inputmethod/InputConnection;I[IZZ)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isCjiTurboKeyLongpress()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    array-length v2, p3

    if-le v2, v5, :cond_0

    aget p2, p3, v5

    :cond_0
    invoke-static {v4}, Lcom/ime/framework/repository/InputStatus;->setFlagCjiTurboKeyLongpress(Z)V

    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iput v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    :cond_1
    :goto_0
    return p2

    :cond_2
    if-eqz p3, :cond_3

    array-length v2, p3

    if-le v2, v5, :cond_3

    iget v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    aget v3, p3, v4

    if-ne v2, v3, :cond_3

    iput-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iget v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    array-length v3, p3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    :goto_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    const/16 v2, 0x119e

    if-eq v2, v1, :cond_1

    const/16 v2, 0x11a2

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iput v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    goto :goto_1
.end method

.method private splitStroke(C)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3161

    const/16 v2, 0x3163

    const/16 v1, 0x199e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x314f
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_c
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public closing()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    return-void
.end method

.method public initComposingBuffer()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v3

    if-le v3, v5, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_4
    iput v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIndexOfKey:I

    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_5
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    goto :goto_0
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    :cond_0
    return-void
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setPredictionWord(Z)V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v3

    iget-boolean v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsTraceOn:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    if-le v9, v10, :cond_8

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v9

    if-nez v9, :cond_8

    move v4, v7

    :goto_0
    move v6, p1

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v5

    const/4 v9, -0x5

    if-ne v6, v9, :cond_0

    iget-boolean v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, ""

    iput-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    :cond_1
    iput-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v6}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eqz v2, :cond_2

    if-eqz v3, :cond_f

    :cond_2
    if-nez v1, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processSingleTap(I[I)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isEnableRevertToTextRange(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->revertToTextRange()V

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setVerbatimToEngine()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9, v8}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9, v8}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_5
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    if-ne v0, v7, :cond_7

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isAutoReplaced()Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_6
    :goto_2
    invoke-virtual {v9, p1, v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setIsAutoReplaced(Z)V

    :cond_7
    return-void

    :cond_8
    move v4, v8

    goto :goto_0

    :cond_9
    if-eq v1, v7, :cond_a

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v9

    if-eq v9, v7, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    invoke-direct {p0, v6, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_3

    array-length v9, p2

    if-lez v9, :cond_3

    aget p1, p2, v8

    goto :goto_1

    :cond_b
    if-ne v1, v12, :cond_d

    if-eq v5, v7, :cond_c

    if-eq v5, v10, :cond_c

    const/4 v9, 0x3

    if-eq v5, v9, :cond_c

    if-ne v5, v11, :cond_d

    :cond_c
    invoke-direct {p0, v6, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_3

    array-length v9, p2

    if-lez v9, :cond_3

    aget p1, p2, v8

    goto :goto_1

    :cond_d
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0, v6, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_3

    array-length v9, p2

    if-lez v9, :cond_3

    aget p1, p2, v8

    goto :goto_1

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_f
    invoke-direct {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isNaragulSpecialKey(I)Z

    move-result v9

    if-eqz v9, :cond_11

    if-nez v2, :cond_11

    if-eq v1, v7, :cond_10

    if-ne v1, v12, :cond_3

    if-ne v5, v11, :cond_3

    :cond_10
    invoke-direct {p0, v6, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_3

    array-length v9, p2

    if-lez v9, :cond_3

    aget p1, p2, v8

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->autoPeriod(I)V

    goto/16 :goto_1

    :cond_12
    move v7, v8

    goto :goto_2
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    if-ltz p1, :cond_0

    array-length v15, v5

    move/from16 v0, p1

    if-ge v0, v15, :cond_0

    aget-object v4, v5, p1

    invoke-interface {v7, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->cancelPreviewTrace()V

    :cond_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    if-lez v15, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mStateCandidate:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosPrevText:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_d

    const v15, 0xfffc

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    :goto_1
    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosPrevText:I

    add-int/lit8 v16, v14, 0x1

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosPrevText:I

    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosPrevText:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosNextText:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v10, 0x1

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v15}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v15

    if-eqz v15, :cond_6

    if-nez v11, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setPredictionWord(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_9

    const-string v15, " "

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->resetTimeoutComposingLength()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->selectWordInList(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->clearCandidateList()V

    if-eqz p2, :cond_f

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v15, :cond_f

    const-string v15, ".,;!?\u061b\u060c\u061f"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v15}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :cond_a
    :goto_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->doNextWordPrediction(Z)V

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, " "

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v10, :cond_b

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    :cond_c
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosPrevText:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mPosNextText:I

    goto/16 :goto_0

    :cond_d
    const/4 v14, -0x1

    goto/16 :goto_1

    :cond_e
    const-string v15, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v15, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v15}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_3
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v8, p2

    if-ge v0, v8, :cond_4

    aget v8, p2, v0

    if-ne p1, v8, :cond_3

    move v5, v0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget v8, p2, v0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    move v4, v0

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_5
    if-le v4, v6, :cond_0

    invoke-static {p1}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_9

    move v2, v6

    :goto_2
    if-nez v5, :cond_6

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mLastKeyCode:I

    add-int/lit8 v9, v4, -0x1

    aget v9, p2, v9

    if-eq v8, v9, :cond_6

    add-int/lit8 v8, v4, -0x1

    aget v8, p2, v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isKeycodeNotAcceptedFilename(I)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    :goto_3
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->removeMessageForMSG_KEY_SENT_TEXT_BY_INPUTCONNECTION()V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "SENT_TEXT_BY_INPUTCONNECTION"

    invoke-interface {v7, v8, v6}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingText()V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    :cond_8
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v7, 0x5dc

    invoke-virtual {p0, v6, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_9
    move v2, v7

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    goto :goto_3
.end method

.method protected processSymbolicKey(I[I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    :cond_0
    const-string v3, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v3, 0xa

    if-eq p1, v3, :cond_3

    const/16 v3, 0x20

    if-ne p1, v3, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_4
    const/4 v3, -0x5

    if-ne p1, v3, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_5
    const/16 v3, -0x3eb

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_6
    const/16 v3, -0x6c

    if-eq p1, v3, :cond_1

    const/16 v3, -0x66

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->updateSuggestionDelay()V

    :cond_7
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->finishComposing(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->initComposingBuffer()V

    int-to-char v3, p1

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setComposingText()V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    :cond_0
    return-void
.end method

.method public updateSuggestion()V
    .locals 7

    const/16 v6, 0x9

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const-string v3, ""

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    :cond_4
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    if-eqz v3, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_5

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method
