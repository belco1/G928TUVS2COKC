.class public Lcom/android/incallui/HeadUpNotificationService;
.super Landroid/app/Service;
.source "HeadUpNotificationService.java"


# instance fields
.field protected mCanSlideOut:Z

.field protected mContext:Landroid/content/Context;

.field protected mDoLaunchFullScreen:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

.field protected mIsHideAnimationRunning:Z

.field protected mIsPopupShowing:Z

.field protected mIsShowAnimationRunning:Z

.field private mMinFlingVelocity:I

.field private mMoveAnimator:Landroid/animation/ObjectAnimator;

.field private mStartPointX:F

.field private mStartPointY:F

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mViewPointX:I

.field private mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindow:Landroid/view/Window;

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mCanSlideOut:Z

    new-instance v0, Lcom/android/incallui/HeadUpNotificationService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/HeadUpNotificationService$1;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/incallui/HeadUpNotificationService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/HeadUpNotificationService$2;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/HeadUpNotificationService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mStartPointX:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/HeadUpNotificationService;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/incallui/HeadUpNotificationService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/HeadUpNotificationService;->mStartPointX:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/HeadUpNotificationService;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mStartPointY:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/HeadUpNotificationService;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/HeadUpNotificationService;->mStartPointY:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/HeadUpNotificationService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mViewPointX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/HeadUpNotificationService;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/HeadUpNotificationService;->mViewPointX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/HeadUpNotificationService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/HeadUpNotificationService;)Lcom/android/incallui/HeadUpNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/HeadUpNotificationService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/HeadUpNotificationService;->animateForSlideOut(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/HeadUpNotificationService;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/HeadUpNotificationService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mMinFlingVelocity:I

    return v0
.end method

.method private animateForSlideOut(Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-boolean v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mCanSlideOut:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v5, :cond_0

    iput-boolean v8, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const-string v5, "HeadUpNotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateForSlideOut:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getMaxX()I

    move-result v5

    int-to-float v5, v5

    neg-float v2, v5

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v8, [F

    aput v2, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/HeadUpNotificationService$4;

    invoke-direct {v6, p0}, Lcom/android/incallui/HeadUpNotificationService$4;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getMaxX()I

    move-result v5

    int-to-float v2, v5

    goto :goto_1
.end method

.method private setDefaultPosition()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowVoiceControlNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private showHeadUpNotification()V
    .locals 3

    const-string v0, "HeadUpNotificationService"

    const-string v1, "showHeadUpNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/incallui/HeadUpNotificationView;

    invoke-direct {v0, p0}, Lcom/android/incallui/HeadUpNotificationView;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    iget-object v1, p0, Lcom/android/incallui/HeadUpNotificationService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/HeadUpNotificationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-virtual {p0, v0}, Lcom/android/incallui/HeadUpNotificationService;->onCreateCustomView(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/incallui/HeadUpNotificationService;->setDefaultPosition()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/incallui/HeadUpNotificationService;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 7

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsPopupShowing:Z

    if-nez v2, :cond_1

    const-string v2, "HeadUpNotificationService"

    const-string v3, "animateForHide: popup is not shwoing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->stopSelf()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const-string v2, "HeadUpNotificationService"

    const-string v3, "animateForHide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-virtual {v2}, Lcom/android/incallui/HeadUpNotificationView;->getHeight()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v5, 0x0

    neg-float v6, v1

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/HeadUpNotificationService$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/HeadUpNotificationService$5;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForHideNotStopSelf()V
    .locals 8

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsPopupShowing:Z

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const-string v3, "HeadUpNotificationService"

    const-string v4, "animateForHide"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-virtual {v3}, Lcom/android/incallui/HeadUpNotificationView;->getHeight()I

    move-result v3

    int-to-float v1, v3

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v6, 0x0

    neg-float v7, v1

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/HeadUpNotificationService$6;

    invoke-direct {v4, p0}, Lcom/android/incallui/HeadUpNotificationService$6;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected animateForShow()V
    .locals 8

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    const-string v3, "HeadUpNotificationService"

    const-string v4, "animateForShow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-virtual {v3}, Lcom/android/incallui/HeadUpNotificationView;->getHeight()I

    move-result v3

    int-to-float v1, v3

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    neg-float v4, v1

    invoke-virtual {v3, v4}, Lcom/android/incallui/HeadUpNotificationView;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/HeadUpNotificationService$3;

    invoke-direct {v4, p0}, Lcom/android/incallui/HeadUpNotificationService$3;-><init>(Lcom/android/incallui/HeadUpNotificationService;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    const/4 v4, -0x2

    const/16 v2, 0x7de

    const v0, 0x1800328

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v3, 0x7f0b0026

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getMaxX()I
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/incallui/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method protected isHideAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    return v0
.end method

.method protected launchFullScreen()V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->removeHeadUpNotification()V

    invoke-direct {p0}, Lcom/android/incallui/HeadUpNotificationService;->showHeadUpNotification()V

    return-void
.end method

.method public onCreate()V
    .locals 7

    const-string v4, "HeadUpNotificationService"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/android/incallui/HeadUpNotificationService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mMinFlingVelocity:I

    invoke-direct {p0}, Lcom/android/incallui/HeadUpNotificationService;->showHeadUpNotification()V

    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/incallui/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/incallui/HeadUpNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const-string v4, "HeadUpNotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TalkbackEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isAccessoryKeyboardAttached = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->updateViewLayout()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->removeHeadUpNotification()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsPopupShowing:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected onShowPopup()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "HeadUpNotificationService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mIsPopupShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mMoveAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected removeHeadUpNotification()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HeadUpNotificationService"

    const-string v1, "removeHeadUpNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-virtual {v0, v2}, Lcom/android/incallui/HeadUpNotificationView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    invoke-virtual {v0}, Lcom/android/incallui/HeadUpNotificationView;->removeAllViews()V

    :cond_1
    iput-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    iput-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method protected resetViewLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/HeadUpNotificationView;->setAlpha(F)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/HeadUpNotificationService;->setDefaultPosition()V

    invoke-virtual {p0}, Lcom/android/incallui/HeadUpNotificationService;->updateViewLayout()V

    return-void
.end method

.method public updateViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    if-eqz v0, :cond_1

    const-string v0, "HeadUpNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWindowAttributes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/HeadUpNotificationView;

    iget-object v2, p0, Lcom/android/incallui/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
