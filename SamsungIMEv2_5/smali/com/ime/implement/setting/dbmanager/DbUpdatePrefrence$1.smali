.class Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;
.super Ljava/lang/Object;
.source "DbUpdatePrefrence.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$1;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->dbUpdatePrepare()V

    return-void
.end method
