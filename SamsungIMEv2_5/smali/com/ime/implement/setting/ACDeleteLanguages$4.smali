.class Lcom/ime/implement/setting/ACDeleteLanguages$4;
.super Ljava/lang/Object;
.source "ACDeleteLanguages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/ACDeleteLanguages;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/ACDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/ACDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/ACDeleteLanguages$4;->this$0:Lcom/ime/implement/setting/ACDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    # setter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z
    invoke-static {v0}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$702(Z)Z

    # getter for: Lcom/ime/implement/setting/ACDeleteLanguages;->mDeleteDlg:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/ime/implement/setting/ACDeleteLanguages;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
