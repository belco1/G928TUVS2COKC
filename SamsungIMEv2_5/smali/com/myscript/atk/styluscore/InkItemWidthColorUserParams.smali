.class public Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;
.super Ljava/lang/Object;
.source "InkItemWidthColorUserParams.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkItemWidthColorUserParams__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 4

    invoke-static {p1, p2, p3}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkItemWidthColorUserParams__SWIG_1(IJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)V
    .locals 3

    invoke-static {p1}, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->getCPtr(Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->new_InkItemWidthColorUserParams__SWIG_2(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->delete_InkItemWidthColorUserParams(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->delete()V

    return-void
.end method

.method public getColor()J
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemWidthColorUserParams_color_get(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemWidthColorUserParams_width_get(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;)I

    move-result v0

    return v0
.end method

.method public setColor(J)V
    .locals 3

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemWidthColorUserParams_color_set(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;J)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    iget-wide v0, p0, Lcom/myscript/atk/styluscore/InkItemWidthColorUserParams;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/myscript/atk/styluscore/styluscoreJNI;->InkItemWidthColorUserParams_width_set(JLcom/myscript/atk/styluscore/InkItemWidthColorUserParams;I)V

    return-void
.end method
