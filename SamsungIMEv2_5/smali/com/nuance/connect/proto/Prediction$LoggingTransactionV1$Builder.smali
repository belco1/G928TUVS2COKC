.class public final Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
.super Lcom/a/a/h$a;

# interfaces
.implements Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/h$a",
        "<",
        "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;",
        "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;",
        ">;",
        "Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1OrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ccpsVersion_:Ljava/lang/Object;

.field private cloudTime_:I

.field private predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

.field private resultCode_:I

.field private totalTime_:I

.field private transactionID_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/h$a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$2600()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    new-instance v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    invoke-direct {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 2

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->newUninitializedMessageException(Lcom/a/a/n;)Lcom/a/a/v;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;-><init>(Lcom/a/a/h$a;Lcom/nuance/connect/proto/Prediction$1;)V

    iget v3, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    :goto_0
    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$2802(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$2902(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->resultCode_:I

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->resultCode_:I
    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$3002(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->cloudTime_:I

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->cloudTime_:I
    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$3102(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->totalTime_:I

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->totalTime_:I
    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$3202(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$3302(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;Ljava/lang/Object;)Ljava/lang/Object;

    # setter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->bitField0_:I
    invoke-static {v2, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$3402(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;I)I

    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/a/a/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->clear()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->clear()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/a/a/h$a;->clear()Lcom/a/a/h$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->resultCode_:I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->cloudTime_:I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->totalTime_:I

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCcpsVersion()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCcpsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearCloudTime()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->cloudTime_:I

    return-object p0
.end method

.method public clearPredictionResult()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearResultCode()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->resultCode_:I

    return-object p0
.end method

.method public clearTotalTime()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->totalTime_:I

    return-object p0
.end method

.method public clearTransactionID()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTransactionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/a/a/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/a/a/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/a/a/n$a;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 2

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->create()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->clone()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCcpsVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCcpsVersionBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public getCloudTime()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->cloudTime_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/a/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/a/a/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    return-object v0
.end method

.method public getPredictionResult()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->resultCode_:I

    return v0
.end method

.method public getTotalTime()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->totalTime_:I

    return v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTransactionIDBytes()Lcom/a/a/c;
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c;->a(Ljava/lang/String;)Lcom/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/a/a/c;

    goto :goto_0
.end method

.method public hasCcpsVersion()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCloudTime()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPredictionResult()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResultCode()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTotalTime()Z
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransactionID()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/h;)Lcom/a/a/h$a;
    .locals 1

    check-cast p1, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/a/a/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/a/a/d;Lcom/a/a/f;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->PARSER:Lcom/a/a/p;

    invoke-interface {v0, p1, p2}, Lcom/a/a/p;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/a/a/j;->a()Lcom/a/a/n;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public mergeFrom(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->hasTransactionID()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    # getter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->transactionID_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$2800(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->hasPredictionResult()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getPredictionResult()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->mergePredictionResult(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->hasResultCode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getResultCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setResultCode(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->hasCloudTime()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getCloudTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setCloudTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->hasTotalTime()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->getTotalTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->setTotalTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->hasCcpsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    # getter for: Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->ccpsVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;->access$3300(Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public mergePredictionResult(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 2

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-static {}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getDefaultInstance()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    invoke-static {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->newBuilder(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->mergeFrom(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->buildPartial()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    :goto_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    goto :goto_0
.end method

.method public setCcpsVersion(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public setCcpsVersionBytes(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->ccpsVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method public setCloudTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->cloudTime_:I

    return-object p0
.end method

.method public setPredictionResult(Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    invoke-virtual {p1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1$Builder;->build()Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPredictionResult(Lcom/nuance/connect/proto/Prediction$PredictionResultV1;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->predictionResult_:Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResultCode(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->resultCode_:I

    return-object p0
.end method

.method public setTotalTime(I)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->totalTime_:I

    return-object p0
.end method

.method public setTransactionID(Ljava/lang/String;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTransactionIDBytes(Lcom/a/a/c;)Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/nuance/connect/proto/Prediction$LoggingTransactionV1$Builder;->transactionID_:Ljava/lang/Object;

    return-object p0
.end method
