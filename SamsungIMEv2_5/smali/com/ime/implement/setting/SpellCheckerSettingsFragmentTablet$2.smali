.class Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet$2;
.super Ljava/lang/Object;
.source "SpellCheckerSettingsFragmentTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;->access$400(Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet$2;->this$0:Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;->access$400(Lcom/ime/implement/setting/SpellCheckerSettingsFragmentTablet;)Landroid/widget/Switch;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
