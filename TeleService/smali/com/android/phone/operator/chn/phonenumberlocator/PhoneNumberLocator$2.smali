.class Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const-string v1, "onPreferenceClick"

    # invokes: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$100(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorDownloader;->isAutoUpdating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    # getter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$700(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v4

    :cond_0
    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isNeedRestartService:Z
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->access$802(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0282

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2$2;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2$2;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0283

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2$1;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
