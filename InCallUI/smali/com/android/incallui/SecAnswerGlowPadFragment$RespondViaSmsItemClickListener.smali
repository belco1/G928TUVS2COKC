.class public Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "SecAnswerGlowPadFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecAnswerGlowPadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecAnswerGlowPadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    # invokes: Lcom/android/incallui/SecAnswerGlowPadFragment;->dismissCannedResponsePopup()V
    invoke-static {v1}, Lcom/android/incallui/SecAnswerGlowPadFragment;->access$100(Lcom/android/incallui/SecAnswerGlowPadFragment;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerGlowPadFragment;->showCustomMessageDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecAnswerGlowPadFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/SecAnswerGlowPadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecAnswerGlowPadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
