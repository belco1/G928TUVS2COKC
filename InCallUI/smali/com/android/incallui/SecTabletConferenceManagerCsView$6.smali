.class Lcom/android/incallui/SecTabletConferenceManagerCsView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletConferenceManagerCsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$6;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v1, "manage animation end..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$6;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$6;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    iget-object v1, v1, Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
