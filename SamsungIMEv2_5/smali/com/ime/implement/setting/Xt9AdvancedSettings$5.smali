.class Lcom/ime/implement/setting/Xt9AdvancedSettings$5;
.super Ljava/lang/Object;
.source "Xt9AdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/Xt9AdvancedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/Xt9AdvancedSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/Xt9AdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings$5;->this$0:Lcom/ime/implement/setting/Xt9AdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/implement/setting/Xt9AdvancedSettings$5;->this$0:Lcom/ime/implement/setting/Xt9AdvancedSettings;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    # setter for: Lcom/ime/implement/setting/Xt9AdvancedSettings;->TracePopup2:Z
    invoke-static {v3}, Lcom/ime/implement/setting/Xt9AdvancedSettings;->access$202(Z)Z

    return-void
.end method
