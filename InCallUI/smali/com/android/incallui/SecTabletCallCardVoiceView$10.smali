.class Lcom/android/incallui/SecTabletCallCardVoiceView$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletCallCardVoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardVoiceView;->animateWaveEffectForAnswer(Landroid/animation/AnimatorSet$Builder;)V
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

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$10;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$10;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallCardVoiceView;->stopWaveEffect(Z)V

    return-void
.end method
