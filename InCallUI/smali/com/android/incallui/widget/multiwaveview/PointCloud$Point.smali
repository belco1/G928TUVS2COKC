.class Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/multiwaveview/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field radius:F

.field final synthetic this$0:Lcom/android/incallui/widget/multiwaveview/PointCloud;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/android/incallui/widget/multiwaveview/PointCloud;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->this$0:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->x:F

    iput p3, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->y:F

    iput p4, p0, Lcom/android/incallui/widget/multiwaveview/PointCloud$Point;->radius:F

    return-void
.end method
