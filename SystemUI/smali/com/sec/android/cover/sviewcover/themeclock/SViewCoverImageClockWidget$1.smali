.class Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverImageClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    const/16 v2, 0x12c2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # getter for: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$200(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$302(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    :cond_1
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    return-void
.end method

.method public onPickupCommonDay()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    return-void
.end method

.method public onPickupFestivalDay(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onThemeFontChanged(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$000(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;Ljava/lang/String;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$1;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    return-void
.end method
