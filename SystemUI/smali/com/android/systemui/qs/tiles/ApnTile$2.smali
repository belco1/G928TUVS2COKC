.class Lcom/android/systemui/qs/tiles/ApnTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ApnTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$2;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$2;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    if-ne p1, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/ApnTile;->mMobileData:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$102(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$2;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->updateActivateStatus()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
