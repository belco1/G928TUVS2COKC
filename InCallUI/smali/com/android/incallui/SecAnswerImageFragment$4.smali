.class Lcom/android/incallui/SecAnswerImageFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecAnswerImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecAnswerImageFragment;->animateShowForMaskPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecAnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecAnswerImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerImageFragment$4;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$4;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # getter for: Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$400(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$4;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # getter for: Lcom/android/incallui/SecAnswerImageFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$400(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
