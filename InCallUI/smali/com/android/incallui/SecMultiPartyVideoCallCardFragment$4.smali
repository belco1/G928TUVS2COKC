.class Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$4;
.super Landroid/os/Handler;
.source "SecMultiPartyVideoCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$4;->this$0:Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment$4;->this$0:Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->enableSwapButton(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;->access$000(Lcom/android/incallui/SecMultiPartyVideoCallCardFragment;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
