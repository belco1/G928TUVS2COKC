.class final Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;
.super Ljava/lang/Object;
.source "BleAudioProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BleAudioProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BleAudioServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BleAudioProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BleAudioProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BleAudioProfile;Lcom/android/settings/bluetooth/BleAudioProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;-><init>(Lcom/android/settings/bluetooth/BleAudioProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 8

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "BleAudioProfile"

    const-string v6, "Bluetooth service connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    check-cast p2, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    # setter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    invoke-static {v5, p2}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$102(Lcom/android/settings/bluetooth/BleAudioProfile;Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$100(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "BleAudioProfile"

    const-string v6, "mService is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$100(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    move-result-object v5

    invoke-virtual {v5}, Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$200(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "BleAudioProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bluetooth device is connected. bd_addr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    const-string v5, "BleAudioProfile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BleAudio found new device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$200(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$300(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v7}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$400(Lcom/android/settings/bluetooth/BleAudioProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    :try_start_0
    const-string v5, "BleAudioProfile"

    const-string v6, "update bt LeAudio device ui state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "BleAudioProfile"

    const-string v6, "Handle NullPointerException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v5, "BleAudioProfile"

    const-string v6, "Bluetooth device is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    const/4 v6, 0x1

    # setter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mIsProfileReady:Z
    invoke-static {v5, v6}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$502(Lcom/android/settings/bluetooth/BleAudioProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    # getter for: Lcom/android/settings/bluetooth/BleAudioProfile;->V:Z
    invoke-static {}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BleAudioProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$502(Lcom/android/settings/bluetooth/BleAudioProfile;Z)Z

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleAudioProfile$BleAudioServiceListener;->this$0:Lcom/android/settings/bluetooth/BleAudioProfile;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/bluetooth/BleAudioProfile;->mService:Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BleAudioProfile;->access$102(Lcom/android/settings/bluetooth/BleAudioProfile;Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;)Lcom/broadcom/bt/service/bleaudio/BluetoothLeAudio;

    return-void
.end method
