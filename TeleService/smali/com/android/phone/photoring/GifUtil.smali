.class public Lcom/android/phone/photoring/GifUtil;
.super Ljava/lang/Object;
.source "GifUtil.java"


# instance fields
.field private bAnimate:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private duration:I

.field private file:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private height:I

.field private iv:Landroid/widget/ImageView;

.field private movie:Landroid/graphics/Movie;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    iput v1, p0, Lcom/android/phone/photoring/GifUtil;->duration:I

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->iv:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/android/phone/photoring/GifUtil;->bAnimate:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    iput v1, p0, Lcom/android/phone/photoring/GifUtil;->duration:I

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->iv:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/android/phone/photoring/GifUtil;->bAnimate:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/photoring/GifUtil;->iv:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/photoring/GifUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/GifUtil;->bAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/photoring/GifUtil;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method


# virtual methods
.method public isAGIF(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const-string v2, "GIFUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAGIF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/phone/photoring/GifUtil;->file:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/photoring/GifUtil;->init()V

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->file:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    const-string v0, "GIFUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movie : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lcom/android/phone/photoring/GifUtil;->duration:I

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/phone/photoring/GifUtil;->width:I

    iget-object v0, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/phone/photoring/GifUtil;->height:I

    const-string v0, "GIFUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/photoring/GifUtil;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/photoring/GifUtil;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/photoring/GifUtil;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public startAnimate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/photoring/GifUtil;->bAnimate:Z

    new-instance v0, Lcom/android/phone/photoring/GifUtil$1;

    invoke-direct {v0, p0}, Lcom/android/phone/photoring/GifUtil$1;-><init>(Lcom/android/phone/photoring/GifUtil;)V

    invoke-virtual {v0}, Lcom/android/phone/photoring/GifUtil$1;->start()V

    return-void
.end method

.method public stopAnimate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/photoring/GifUtil;->bAnimate:Z

    return-void
.end method

.method public updateView()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/photoring/GifUtil;->duration:I

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/phone/photoring/GifUtil;->duration:I

    int-to-long v4, v4

    rem-long v4, v2, v4

    long-to-int v1, v4

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    invoke-virtual {v4, v1}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/android/phone/photoring/GifUtil;->width:I

    iget v5, p0, Lcom/android/phone/photoring/GifUtil;->height:I

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/phone/photoring/GifUtil;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->canvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->movie:Landroid/graphics/Movie;

    iget-object v5, p0, Lcom/android/phone/photoring/GifUtil;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v5, v7, v7}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/photoring/GifUtil;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->iv:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/photoring/GifUtil;->iv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/phone/photoring/GifUtil;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
