.class Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;
.super Ljava/lang/Object;
.source "SpellCheckerSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SpellCheckerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->mSPref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->access$000(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SETTINGS_DEFAULT_SPELL_CHECKER"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    # invokes: Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->createLanguageList(Z)V
    invoke-static {v1, p2}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->access$100(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;Z)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->access$200(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->access$300(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S01A"

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->actionBarSwitchTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->access$200(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragment$1;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragment;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragment;->access$300(Lcom/ime/implement/setting/SpellCheckerSettingsFragment;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    const-string v2, "S01A"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
