.class Lcom/android/incallui/SecTabletVolumeSeekBar$2;
.super Ljava/lang/Object;
.source "SecTabletVolumeSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletVolumeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletVolumeSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    const/16 v6, 0x65

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$200(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Set force progress level 1 for call volume"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/SecTabletCallVolumeObserver;->getAudioStream()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$000(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$000(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$300(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eq v1, p2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch setting volume level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$300(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->isExtraVolOn()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$300(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$400(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->OVERLAP_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$400(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeIndex:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$200(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$500(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$100(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletVolumeSeekBar$2;->this$0:Lcom/android/incallui/SecTabletVolumeSeekBar;

    # getter for: Lcom/android/incallui/SecTabletVolumeSeekBar;->DEFAULT_ACTIVATED_COLOR:Landroid/content/res/ColorStateList;
    invoke-static {v2}, Lcom/android/incallui/SecTabletVolumeSeekBar;->access$500(Lcom/android/incallui/SecTabletVolumeSeekBar;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
