.class Lcom/android/systemui/qs/tiles/VoLteTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "VoLteTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$302(Lcom/android/systemui/qs/tiles/VoLteTile;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mMobileData:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$300(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDeregVolteInDataOff:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mDDSChanged:Z
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$400(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mSettingVoLTE:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$500(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # getter for: Lcom/android/systemui/qs/tiles/VoLteTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$600(Lcom/android/systemui/qs/tiles/VoLteTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->manualIMSDeregister(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$700(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->getVoLTEEnabled()Z
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$100(Lcom/android/systemui/qs/tiles/VoLteTile;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/VoLteTile;->access$800(Lcom/android/systemui/qs/tiles/VoLteTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method
