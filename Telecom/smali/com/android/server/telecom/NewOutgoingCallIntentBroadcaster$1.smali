.class Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;
.super Landroid/os/Handler;
.source "NewOutgoingCallIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outbarring"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    # getter for: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$1;->this$0:Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->launchSystemDialer(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->access$500(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
