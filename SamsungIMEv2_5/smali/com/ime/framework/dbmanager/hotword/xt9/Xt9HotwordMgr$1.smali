.class Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr$1;
.super Ljava/lang/Object;
.source "Xt9HotwordMgr.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    # invokes: Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z
    invoke-static {v1, p1, p2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->access$100(Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;ILjava/lang/Object;)Z

    move-result v1

    return v1

    :pswitch_0
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr$1;->this$0:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    iget-object v2, v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/ime/framework/dbmanager/DbDownloadInfo;->fileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->updateFinish(Ljava/lang/String;Ljava/io/File;)V
    invoke-static {v1, v2, v3}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->access$000(Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
