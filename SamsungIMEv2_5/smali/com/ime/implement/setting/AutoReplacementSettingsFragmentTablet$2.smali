.class Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;
.super Ljava/lang/Object;
.source "AutoReplacementSettingsFragmentTablet.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->createLanguageList(Z)V
    invoke-static {v1, p2}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;Z)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$300(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$300(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S003"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;->access$300(Lcom/ime/implement/setting/AutoReplacementSettingsFragmentTablet;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S003"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
