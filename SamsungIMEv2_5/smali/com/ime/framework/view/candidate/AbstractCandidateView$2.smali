.class Lcom/ime/framework/view/candidate/AbstractCandidateView$2;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardSYMCandidate(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSympageClicked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/input/InputController;->updateCandidates()V

    :cond_0
    return-void
.end method
