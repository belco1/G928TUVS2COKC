.class public Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;
.super Landroid/widget/FrameLayout;
.source "CoverPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$4;,
        Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;
    }
.end annotation


# static fields
.field private static final PREVIEW_ANIMATION_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "CoverPreviewContainer"


# instance fields
.field private mCameraPreview:Landroid/view/View;

.field private mDistance:I

.field private mFirstBorder:I

.field private mIsMultiTouch:Z

.field private mIsSecure:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhonePreview:Landroid/view/View;

.field private mPhoneWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

.field private mPreviewEnabled:Z

.field private mPreviewInflater:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;

.field private mPreviewView:Landroid/view/View;

.field private mShowing:Z

.field private mStartX:I

.field private mStartY:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    iput v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mShowing:Z

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-direct {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_first_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewInflater:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setWillNotDraw(Z)V

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhoneWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhoneWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;->setProperWallpaper(Z)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->inflatePreViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhoneWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v1, v3

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    int-to-float v0, v3

    float-to-double v4, v2

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private inflatePreViews()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, -0x2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewInflater:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$2;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewInflater:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhoneWallpaperView:Lcom/sec/android/cover/sviewcover/SViewCoverWallpaperView;

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    new-instance v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$3;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iput-boolean v9, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    goto :goto_0

    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v3, "CoverPreviewContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempRect.left ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTempRect.top ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iput v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    int-to-double v4, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-gt v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsSecure:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    iput v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-nez v3, :cond_6

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->invalidate()V

    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v7, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iget v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->setPreviewRect(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->invalidate()V

    goto/16 :goto_0

    :cond_6
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-lez v3, :cond_5

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-gt v3, v9, :cond_7

    iput-boolean v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    :cond_7
    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mFirstBorder:I

    iget v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    if-ge v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsMultiTouch:Z

    if-eqz v3, :cond_0

    :cond_8
    invoke-virtual {p0, v8}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    iput v8, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->invalidate()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->isShaderReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public resetPreviewView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "CoverPreviewContainer"

    const-string v1, "resetPreviewView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mShowing:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 3

    const-string v0, "CoverPreviewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewEnabled() isEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewEnabled:Z

    return-void
.end method

.method public setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V
    .locals 4

    const-string v1, "CoverPreviewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewView() type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$4;->$SwitchMap$com$sec$android$cover$sviewcover$effect$PreviewAnimationController$PreviewType:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    const-string v2, "CoverPreviewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap == null-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewDrawable:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$CoverCirclePreviewDrawable;->setPreViewBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->isSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mIsSecure:Z

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mCameraPreview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPhonePreview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 5

    const-string v0, "CoverPreviewContainer"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mShowing:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartX:I

    iget v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mStartY:I

    iget v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mDistance:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->getMaxCircleSize()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut60;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method
