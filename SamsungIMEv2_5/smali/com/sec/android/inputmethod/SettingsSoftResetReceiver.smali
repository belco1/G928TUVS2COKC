.class public Lcom/sec/android/inputmethod/SettingsSoftResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSoftResetReceiver.java"


# static fields
.field public static final ACTION_SETTINGS_SOFT_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/implement/setting/ResetSettings;->reset(Landroid/content/Context;)V

    goto :goto_0
.end method
