.class Lcom/android/incallui/SecTabletCallCardVoiceView$3;
.super Ljava/lang/Object;
.source "SecTabletCallCardVoiceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardVoiceView;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$3;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
