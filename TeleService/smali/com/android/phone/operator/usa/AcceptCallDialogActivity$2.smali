.class Lcom/android/phone/operator/usa/AcceptCallDialogActivity$2;
.super Ljava/lang/Object;
.source "AcceptCallDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/AcceptCallDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$2;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$2;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->finish()V

    return-void
.end method
