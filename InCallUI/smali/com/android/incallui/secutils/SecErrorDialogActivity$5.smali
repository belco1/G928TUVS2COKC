.class Lcom/android/incallui/secutils/SecErrorDialogActivity$5;
.super Ljava/lang/Object;
.source "SecErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secutils/SecErrorDialogActivity;->showErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secutils/SecErrorDialogActivity;

.field final synthetic val$errorCode:I

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$toVoLTE:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;Ljava/lang/String;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->this$0:Lcom/android/incallui/secutils/SecErrorDialogActivity;

    iput-object p2, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->val$number:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->val$toVoLTE:Z

    iput p4, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->val$number:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->val$toVoLTE:Z

    iget v2, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->val$errorCode:I

    invoke-static {v0, v1, v2}, Lcom/android/incallui/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$5;->this$0:Lcom/android/incallui/secutils/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->finish()V

    return-void
.end method
