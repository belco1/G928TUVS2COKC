.class Lcom/android/incallui/SecIMSConferenceCallCardFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecIMSConferenceCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecIMSConferenceCallCardFragment;->animateForSwap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecIMSConferenceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecIMSConferenceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment$1;->this$0:Lcom/android/incallui/SecIMSConferenceCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const-string v1, "swap animation end..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecIMSConferenceCallCardFragment$1;->this$0:Lcom/android/incallui/SecIMSConferenceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/SecIMSConferenceCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
