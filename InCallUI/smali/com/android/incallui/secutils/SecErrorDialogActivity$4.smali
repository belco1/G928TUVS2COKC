.class Lcom/android/incallui/secutils/SecErrorDialogActivity$4;
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


# direct methods
.method constructor <init>(Lcom/android/incallui/secutils/SecErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$4;->this$0:Lcom/android/incallui/secutils/SecErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secutils/SecErrorDialogActivity$4;->this$0:Lcom/android/incallui/secutils/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/secutils/SecErrorDialogActivity;->finish()V

    return-void
.end method
