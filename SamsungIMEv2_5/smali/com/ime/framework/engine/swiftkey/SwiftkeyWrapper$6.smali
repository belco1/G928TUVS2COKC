.class Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/util/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/16 v1, 0x200

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->clearLoadLangugagePackFlag(I)Z
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$200(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->mLoadingLanguagePacks:Z
    invoke-static {v0, v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$302(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;Z)Z

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->setSessionPrivateSetting()V
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$400(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    iget-object v0, p0, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper$6;->this$0:Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    # invokes: Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->updateSuggestionUIThread()V
    invoke-static {v0}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;->access$600(Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;)V

    :cond_0
    return-void
.end method
