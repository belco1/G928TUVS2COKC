.class Lcom/ime/framework/view/TipsDialog$28;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showTipsOneHandedGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$28;->this$0:Lcom/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$28;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$28;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z
    invoke-static {v2}, Lcom/ime/framework/view/TipsDialog;->access$600(Lcom/ime/framework/view/TipsDialog;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "first_one_handed_execution"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$28;->this$0:Lcom/ime/framework/view/TipsDialog;

    # setter for: Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/TipsDialog;->access$602(Lcom/ime/framework/view/TipsDialog;Z)Z

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$28;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setDontShowOneHandedGuideConsecutively(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$28;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->showTipsDialogByIndex()V

    return-void

    :cond_0
    const-string v2, "first_one_handed_execution"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
