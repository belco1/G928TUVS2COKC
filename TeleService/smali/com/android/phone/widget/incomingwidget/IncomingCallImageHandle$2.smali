.class Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$2;
.super Ljava/lang/Object;
.source "IncomingCallImageHandle.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z
    invoke-static {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$802(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$2;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z
    invoke-static {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$802(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;Z)Z

    return-void
.end method
