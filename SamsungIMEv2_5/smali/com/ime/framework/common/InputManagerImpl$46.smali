.class Lcom/ime/framework/common/InputManagerImpl$46;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/view/ViewController;->resetMultitap()V

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/input/InputController;->finishAndInitByCursorMove()V

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/ime/framework/common/InputManagerImpl;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$2100(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$46;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/input/InputController;->updateCandidates()V

    goto :goto_0
.end method
