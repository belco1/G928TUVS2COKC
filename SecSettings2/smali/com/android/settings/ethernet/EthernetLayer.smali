.class public Lcom/android/settings/ethernet/EthernetLayer;
.super Ljava/lang/Object;
.source "EthernetLayer.java"


# instance fields
.field private mDevList:[Ljava/lang/String;

.field private mDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

.field private mEthManager:Landroid/net/EthernetManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/ethernet/EthernetLayer$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ethernet/EthernetLayer$1;-><init>(Lcom/android/settings/ethernet/EthernetLayer;)V

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetLayer;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetLayer;->mDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ethernet/EthernetLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ethernet/EthernetLayer;->handleDevListChanges()V

    return-void
.end method

.method private handleDevListChanges()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetLayer;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getDeviceNameList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ethernet/EthernetLayer;->mDevList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetLayer;->mDialog:Lcom/android/settings/ethernet/EthernetConfigDialog;

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetLayer;->mDevList:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->updateDevNameList([Ljava/lang/String;)V

    return-void
.end method
