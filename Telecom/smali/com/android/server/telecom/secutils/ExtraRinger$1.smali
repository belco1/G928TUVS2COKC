.class Lcom/android/server/telecom/secutils/ExtraRinger$1;
.super Landroid/os/Handler;
.source "ExtraRinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/ExtraRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/ExtraRinger;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # operator++ for: Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$008(Lcom/android/server/telecom/secutils/ExtraRinger;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_EXTRA_RINGTONE_VOLUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # getter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$000(Lcom/android/server/telecom/secutils/ExtraRinger;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$100(Lcom/android/server/telecom/secutils/ExtraRinger;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # getter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$200(Lcom/android/server/telecom/secutils/ExtraRinger;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # getter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$000(Lcom/android/server/telecom/secutils/ExtraRinger;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # getter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$000(Lcom/android/server/telecom/secutils/ExtraRinger;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # getter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$200(Lcom/android/server/telecom/secutils/ExtraRinger;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger$1;->this$0:Lcom/android/server/telecom/secutils/ExtraRinger;

    # getter for: Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->access$300(Lcom/android/server/telecom/secutils/ExtraRinger;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/secutils/ExtraRinger$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
