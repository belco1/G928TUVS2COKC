.class Lcom/android/incallui/SecDrivelinkInCallActivity$1;
.super Ljava/lang/Object;
.source "SecDrivelinkInCallActivity.java"

# interfaces
.implements Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecDrivelinkInCallActivity;->internalResolveIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecDrivelinkInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecDrivelinkInCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkInCallActivity$1;->this$0:Lcom/android/incallui/SecDrivelinkInCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    return-void
.end method

.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method
