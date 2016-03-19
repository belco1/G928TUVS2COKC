.class public Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyHwPhonepadKoreanInputModule.java"


# instance fields
.field private final mBackupHangul:Ljava/lang/StringBuilder;

.field private mComposeableAddStroke:[C

.field private mComposeableDoubleUp:[C

.field private mComposeableVowel:[C

.field private mComposedisableAddStroke:[[C

.field private mIndexOfKey:I

.field private mIsTappingMultiTapKey:Z

.field private mReplaceVowel:[C


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mReplaceVowel:[C

    const/16 v0, 0x12

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposeableVowel:[C

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposeableAddStroke:[C

    new-array v0, v3, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposedisableAddStroke:[[C

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mComposeableDoubleUp:[C

    return-void

    nop

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
    .locals 18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    move v2, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v13

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    const/16 v16, 0x40

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->clearCandidateList()V

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v15, v8}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v15}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    move/from16 v0, p2

    int-to-char v15, v0

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    const/16 v15, 0x119e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/16 v15, 0x11a2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    if-eqz p4, :cond_f

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setVerbatimToEngine()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v15, v4}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    :cond_3
    :goto_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-eqz p1, :cond_11

    if-nez p5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v15

    if-lez v15, :cond_11

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    :goto_2
    if-nez v9, :cond_4

    if-eq v2, v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->removeMessageForMSG_KEY_SENT_TEXT_BY_INPUTCONNECTION()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v16, "SENT_TEXT_BY_INPUTCONNECTION"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestionDelay()V

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    return-void

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mPosNextText:I

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v15, v0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz p5, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    if-eqz v15, :cond_d

    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x119e

    move/from16 v0, p2

    if-eq v0, v15, :cond_a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9

    add-int/lit8 v15, v11, -0x1

    invoke-virtual {v4, v15, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    aget p2, p3, v15

    :cond_a
    move/from16 v0, p2

    int-to-char v15, v0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    if-eqz v15, :cond_2

    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_2

    move/from16 v0, p2

    int-to-char v15, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isMedialVowel(C)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v15, v0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    if-eqz p1, :cond_b

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_b
    const/4 v9, 0x1

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    :cond_c
    move/from16 v0, p2

    int-to-char v15, v0

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    int-to-char v15, v0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-eqz p1, :cond_e

    if-nez p5, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v15

    if-lez v15, :cond_e

    if-lez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/4 v9, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v11

    if-lez v11, :cond_10

    add-int/lit8 v15, v11, -0x1

    invoke-static {v15, v11}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    const/4 v9, 0x1

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v15

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    goto/16 :goto_2
.end method

.method private commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<SwiftkeyHwPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

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

    const-string v2, "<SwiftkeyHwPhonepadKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

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

.method private processBackSpaceKey()V
    .locals 14

    const/16 v13, 0x43

    const/16 v12, 0x2b

    const/4 v11, -0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v10, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v4, ""

    if-eqz v2, :cond_3

    invoke-interface {v2, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v6

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->resetPredictionWord()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v7

    invoke-interface {v7}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v7

    invoke-virtual {v7, v11, v10}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v10, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->deleteLastJamoInComposing()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestionDelay()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x5dc

    invoke-virtual {p0, v7, v8}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_7

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v7

    sget-object v8, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v7, v8, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v2, v7, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v13}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    :cond_8
    if-lez v6, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setPredictionWord(Z)V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_b

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x5dc

    invoke-virtual {p0, v7, v8}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_e

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v2, v7, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v13}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 7

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setIsTappingMultiTapKey(Landroid/view/inputmethod/InputConnection;I[IZZ)I

    move-result p1

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->chunjyinMultitap(Landroid/view/inputmethod/InputConnection;I[IZZI)V

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

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

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

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

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 10

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const/4 v7, 0x1

    new-array v0, v7, [I

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    const/4 v3, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->codePointAt(I)I

    move-result v5

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    if-nez v3, :cond_4

    int-to-char v7, p1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isEnableAutoCorrection(C)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v2, v0, p1}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[II)Z

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    const/16 v7, 0xa

    if-ne p1, v7, :cond_6

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->sendEnterKeyHandle()V

    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestion()V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_5
    const-string v7, ""

    iput-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v8, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v6

    if-eqz v4, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposingWithoutInit()V

    const/4 v7, 0x1

    if-eq v1, v7, :cond_8

    const/4 v7, 0x2

    if-eq v1, v7, :cond_8

    const/4 v7, 0x3

    if-eq v1, v7, :cond_8

    const/4 v7, 0x4

    if-eq v1, v7, :cond_8

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    :cond_8
    if-eqz v3, :cond_b

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    :cond_9
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->resetTimeoutComposingLength()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    const/16 v7, 0x20

    if-ne p1, v7, :cond_b

    const/4 v7, 0x2

    if-ne v1, v7, :cond_a

    invoke-static {v5}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isConsonant(I)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v7, 0x20

    if-ne p1, v7, :cond_b

    :cond_a
    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestion()V

    goto/16 :goto_0

    :cond_b
    int-to-char v7, p1

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestion()V

    goto/16 :goto_0
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

    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iput v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    :cond_1
    :goto_0
    return p2

    :cond_2
    if-eqz p3, :cond_4

    array-length v2, p3

    if-le v2, v5, :cond_4

    iget v2, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mLastKeyCode:I

    aget v3, p3, v4

    if-ne v2, v3, :cond_4

    iput-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iget v2, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    array-length v3, p3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    :goto_1
    if-nez p5, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iput v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    goto :goto_1

    :cond_5
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

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    return-void
.end method

.method public initComposingBuffer()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->doResetMultitap()I

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_2
    iput v2, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIndexOfKey:I

    iput-boolean v2, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsTappingMultiTapKey:Z

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mBackupHangul:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    :cond_0
    return-void
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v2

    move v4, p1

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    const/4 v5, -0x5

    if-ne v4, v5, :cond_0

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, ""

    iput-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    :cond_1
    iput-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v4}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v1, :cond_2

    if-eqz v2, :cond_9

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v5

    if-nez v5, :cond_3

    if-eq v0, v7, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v5

    if-eq v5, v7, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    invoke-direct {p0, v4, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_4

    array-length v5, p2

    if-lez v5, :cond_4

    aget p1, p2, v6

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setVerbatimToEngine()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mLastKeyCode:I

    return-void

    :cond_5
    const/16 v5, 0x8

    if-ne v0, v5, :cond_7

    if-eq v3, v7, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    :cond_6
    invoke-direct {p0, v4, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_4

    array-length v5, p2

    if-lez v5, :cond_4

    aget p1, p2, v6

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v4, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_4

    array-length v5, p2

    if-lez v5, :cond_4

    aget p1, p2, v6

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->autoPeriod(I)V

    goto :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    if-ltz p1, :cond_0

    array-length v7, v2

    if-ge p1, v7, :cond_0

    aget-object v1, v2, p1

    invoke-interface {v4, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-lez v7, :cond_6

    :cond_2
    iget v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mStateCandidate:I

    if-ne v7, v10, :cond_6

    if-nez v0, :cond_6

    iget v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mPosPrevText:I

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mPosNextText:I

    invoke-interface {v4, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setPredictionWord(Z)V

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->resetTimeoutComposingLength()V

    if-eqz v3, :cond_5

    const/16 v7, 0x20

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_5
    invoke-static {p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingText()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mPickSuggestionIndex:I

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->selectWordInList(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->clearCandidateList()V

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->doNextWordPrediction(Z)V

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    iput v9, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mPosPrevText:I

    iput v9, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mPosNextText:I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mStateCandidate:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    if-nez v0, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    :cond_0
    const-string v3, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v3, 0xa

    if-eq p1, v3, :cond_3

    const/16 v3, 0x20

    if-ne p1, v3, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_4
    const/4 v3, -0x5

    if-ne p1, v3, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestionDelay()V

    :cond_6
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->finishComposing(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->initComposingBuffer()V

    int-to-char v3, p1

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->updateSuggestionDelay()V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setComposingText()V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    :cond_0
    return-void
.end method

.method public updateSuggestion()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x9

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const-string v4, ""

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->isEnableAutoCorrection()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v1}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v7}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mIsBackspacePressed:Z

    if-eqz v4, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_4

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method
