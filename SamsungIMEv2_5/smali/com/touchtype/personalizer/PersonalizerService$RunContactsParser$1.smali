.class Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;
.super Lcom/touchtype/personalizer/ContactsParser;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    invoke-direct {p0, p2, p3}, Lcom/touchtype/personalizer/ContactsParser;-><init>(Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V

    return-void
.end method


# virtual methods
.method protected onComplete()V
    .locals 6

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$900(Lcom/touchtype/personalizer/PersonalizerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$1000(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v4, v5, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    :goto_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v4, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$700(Lcom/touchtype/personalizer/PersonalizerService;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$1000(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v4, v3, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x3

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v4, v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1200(Lcom/touchtype/personalizer/PersonalizerService;)I

    move-result v0

    if-ge v0, v5, :cond_3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # operator++ for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1208(Lcom/touchtype/personalizer/PersonalizerService;)I

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to build an ConstactsParser object. Trying again ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$1200(Lcom/touchtype/personalizer/PersonalizerService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$1100(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v4, v3, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v4, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # invokes: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$700(Lcom/touchtype/personalizer/PersonalizerService;)V

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ran out of retry attemps when attempting to parse Contacts"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onProgress(II)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x1

    # setter for: Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$902(Lcom/touchtype/personalizer/PersonalizerService;Z)Z

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    # setter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I
    invoke-static {v0, p2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$1002(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;I)I

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$1100(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    # getter for: Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x64

    div-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% of Contacts messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
