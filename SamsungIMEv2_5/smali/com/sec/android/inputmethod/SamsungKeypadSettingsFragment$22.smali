.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;
.super Ljava/lang/Object;
.source "SamsungKeypadSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v6, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-string v7, "com.sec.android.inputmethod_preferences"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v4

    const v6, 0x7f0d0047

    invoke-virtual {v4, v6}, Landroid/widget/Toast;->setText(I)V

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mT9Toast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$200(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return v5

    :cond_0
    instance-of v6, p1, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    # getter for: Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->misTablet:Z
    invoke-static {v4}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->access$300(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    iget-object v4, v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->mListener:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;

    invoke-interface {v4, p1}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$OnDetailMenuSelected;->onDetailMenuSeleted(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->settingActivity:Landroid/app/Activity;

    const-class v6, Lcom/ime/implement/setting/AutoReplacementSettings;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$22;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v4, v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
