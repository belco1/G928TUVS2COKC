.class Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagesSettings.java"

# interfaces
.implements Lcom/touchtype_fluency/util/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4;->this$0:Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;

    new-instance v1, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;

    invoke-direct {v1, p0, p1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4$1;-><init>(Lcom/ime/implement/setting/SwiftkeyLanguagesSettings$4;Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;)V

    invoke-virtual {v0, v1}, Lcom/ime/implement/setting/SwiftkeyLanguagesSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
