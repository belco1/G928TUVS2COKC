.class Lcom/android/keyguard/KeyguardActivityLauncher$4;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardActivityLauncher;->launchLandingPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActivityLauncher;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$300(Lcom/android/keyguard/KeyguardActivityLauncher;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$300(Lcom/android/keyguard/KeyguardActivityLauncher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$300(Lcom/android/keyguard/KeyguardActivityLauncher;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardActivityLauncher;->mDelayedStartActivityHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardActivityLauncher;->mDelayedStartActivityHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
