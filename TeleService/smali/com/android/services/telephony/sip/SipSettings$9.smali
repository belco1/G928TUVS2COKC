.class Lcom/android/services/telephony/sip/SipSettings$9;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/net/sip/SipRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistering(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationDone(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a001c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/services/telephony/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipSettings$9;->this$0:Lcom/android/services/telephony/sip/SipSettings;

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/sip/SipSettings;->access$1400(Lcom/android/services/telephony/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
