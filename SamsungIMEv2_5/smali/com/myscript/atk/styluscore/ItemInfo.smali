.class public Lcom/myscript/atk/styluscore/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemInfo__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemInfo;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/ItemInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/ItemInfo;->getCPtr(Lcom/myscript/atk/styluscore/ItemInfo;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemInfo__SWIG_2(JLcom/myscript/atk/styluscore/ItemInfo;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_ItemInfo__SWIG_1([BZ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/ItemInfo;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/ItemInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_ItemInfo(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/ItemInfo;->delete()V

    return-void
.end method

.method public getDisplayValue()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemInfo_getDisplayValue(JLcom/myscript/atk/styluscore/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemInfo_getLabel(JLcom/myscript/atk/styluscore/ItemInfo;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public valid()Z
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/ItemInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->ItemInfo_valid(JLcom/myscript/atk/styluscore/ItemInfo;)Z

    move-result v0

    return v0
.end method
