.class Lcom/android/phone/operator/usa/AssistedDialingActivity$1;
.super Ljava/lang/Object;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->access$000(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick mSubAppBarView value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingActivity;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->access$000(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    # getter for: Lcom/android/phone/operator/usa/AssistedDialingActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->access$100(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
