.class final Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    # getter for: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Z)Z

    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-nez v1, :cond_2

    # getter for: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccessPointController"

    const-string v2, "Registering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_1

    # getter for: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AccessPointController"

    const-string v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    goto :goto_0
.end method
