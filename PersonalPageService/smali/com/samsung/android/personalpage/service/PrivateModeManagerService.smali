.class public Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
.super Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
.source "PrivateModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERMISSION_START_PRIVATE_MODE:Ljava/lang/String; = "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

.field private static final SUPPORT_MULTIPLE_NORMAL_M2P:Z = false

.field private static final TAG:Ljava/lang/String; = "PrivateModeManagerService"

.field private static mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

.field private static mIsMountedPrivateStorage:Z


# instance fields
.field private mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/personalpage/service/PrivateModeClient;",
            ">;"
        }
    .end annotation
.end field

.field private mClientName:Ljava/lang/String;

.field mDoNotShowCheck:Landroid/widget/CheckBox;

.field final mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

.field private mIsSuccessFileTransfer:Z

.field private final mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

.field mPrivateModeNormalDialog:Landroid/app/AlertDialog;

.field private mTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/samsung/android/personalpage/service/PrivateModeClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    sput-boolean v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    new-instance v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    check-cast p1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleCheckClients()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleVerifyUser()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleMountPirvateStorage()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleUnmountPirvateStorage()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestVerifyUser()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return p0
.end method

.method private evtIdToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "PREPARED"

    goto :goto_0

    :sswitch_1
    const-string v0, "MOUNTED"

    goto :goto_0

    :sswitch_2
    const-string v0, "UNMOUNTED"

    goto :goto_0

    :sswitch_3
    const-string v0, "CANCELLED"

    goto :goto_0

    :sswitch_4
    const-string v0, "ERROR_INTERNAL"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method private getDensity()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    .locals 2

    const-class v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    :cond_0
    sget-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCheckClients()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckClients: Clients Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v2, "pref_pp_normal_off_disclaimer_noti"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    goto :goto_0
.end method

.method private declared-synchronized handleMountPirvateStorage()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-eqz v0, :cond_1

    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: already mounted"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    if-nez v0, :cond_2

    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: StorageManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changeNormalPrivateModeStorage(ZLcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->SendPrivateModeSurvery(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: Failed to mount Private Storage"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleUnmountPirvateStorage()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-nez v2, :cond_1

    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: already unmounted"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    if-nez v2, :cond_3

    const-string v2, "PrivateModeManagerService"

    const-string v3, "handleUnmountPirvateStorage: StorageManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changePrivateModeStorage(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_0

    :cond_4
    const-string v2, "PrivateModeManagerService"

    const-string v3, "handleUnmountPirvateStorage: Failed to Unmount Private Storage"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private handleVerifyUser()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleVerifyUser(Z)V

    :cond_0
    return-void
.end method

.method private requestCheckClients()V
    .locals 2

    const/16 v1, 0x200

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestMountPirvateStorage()V
    .locals 2

    const/16 v1, 0x201

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestShowDialog(Z)V
    .locals 4

    const/16 v3, 0x204

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v3}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private requestUnmountPirvateStorage()V
    .locals 2

    const/16 v1, 0x202

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestVerifyUser()V
    .locals 2

    const/16 v1, 0x203

    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-eqz v0, :cond_0

    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: already verified"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showPrivateModeNormalDialog(Z)V
    .locals 14

    const v13, 0x104000a

    const/high16 v12, 0x1000000

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-nez v6, :cond_0

    const-string v6, "PrivateModeManagerService"

    const-string v7, "showPrivateModeNormalDialog: personalPageService is NULL!!"

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v6, "PrivateModeManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showPrivatModeNormalDialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsMountedPrivateStorage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v9}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    :goto_1
    sget-boolean v6, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-nez v6, :cond_3

    if-nez p1, :cond_3

    const-string v6, "PrivateModeManagerService"

    const-string v7, "showPrivateModeNormalDialog: Cancel from Confirm window or Verify window"

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-nez v1, :cond_4

    const-string v6, "PrivateModeManagerService"

    const-string v7, "showPrivateModeNormalDialog: dialogLayout is null!!"

    invoke-static {v6, v7}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_a

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v6

    if-lt v6, v9, :cond_9

    const-string v6, "com.sec.android.app.launcher"

    iget-object v7, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const v6, 0x7f030005

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :cond_5
    :goto_2
    const v6, 0x7f070003

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getIsWhiteTheme()Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f070002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "ro.build.scafe"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "latte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "ro.build.scafe.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "ro.build.scafe.shot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "half"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->getDensity()I

    move-result v6

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_b

    const-string v6, "#252525"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_3
    if-eqz p1, :cond_c

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v6

    if-le v6, v9, :cond_c

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v6

    if-lt v6, v9, :cond_f

    const-string v6, "com.sec.android.app.launcher"

    iget-object v7, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const v6, 0x1040014

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_5
    if-nez p1, :cond_7

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    :cond_7
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_10

    new-instance v6, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$2;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v13, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v12, v12}, Landroid/view/Window;->setFlags(II)V

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_8
    const v6, 0x7f030006

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    :cond_9
    const v6, 0x7f030004

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    :cond_a
    const v6, 0x7f030003

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-boolean v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    if-nez v6, :cond_5

    const v6, 0x7f070002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f05001d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_b
    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_c
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getIsWhiteTheme()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const-string v7, "#000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    new-instance v7, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_e
    const v6, 0x7f050024

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :cond_f
    const v6, 0x1040014

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    :cond_10
    const/high16 v6, 0x1040000

    new-instance v7, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v13, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_6
.end method

.method private updatePrivateModeDB(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    if-ne p1, v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    const-string v0, "sys.samsung.personalpage.mode"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    const-string v0, "sys.samsung.personalpage.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized KillAllClient()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "PrivateModeManagerService"

    const-string v1, "KillAllClient"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearNormalM2P()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v3, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump PrivateModeManagerService from from pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", uid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " without permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "PrivateModeManagerService"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "==========================================================================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Active clients:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_1
    const-string v3, "    None."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  * Client #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected getNumOfRegisteredClient()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "PrivateModeManagerService"

    const-string v1, "getNumOfRegisteredClient: 0"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRegisteredClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized notifyEventToClient(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyEventToClient, client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onStateChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->evtIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->onEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method onClientDied(Landroid/os/IBinder;Lcom/samsung/android/personalpage/service/PrivateModeClient;)V
    .locals 3

    const-string v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientDied: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onVerifiedUser()V
    .locals 2

    const-string v0, "PrivateModeManagerService"

    const-string v1, "onVerifiedUser"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestMountPirvateStorage()V

    return-void
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v7, 0x205

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v5, "PrivateModeManagerService"

    const-string v6, "registerClient: client is null"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "PrivateModeManagerService"

    const-string v6, "registerClient: M2P is Activating"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v5, v7}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v5, v7}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    move-object v3, v4

    goto :goto_0

    :cond_1
    const-string v5, "package_name"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/samsung/android/privatemode/IPrivateModeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v5, "PrivateModeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerClient: client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package_name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v6, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "PrivateModeManagerService"

    const-string v5, "registerClient: client already registered"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestShowDialog(Z)V

    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    new-instance v2, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Lcom/samsung/android/privatemode/IPrivateModeClient;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestShowDialog(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2
.end method

.method public unRegisterClient(Landroid/os/IBinder;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    if-nez p1, :cond_0

    const-string v2, "PrivateModeManagerService"

    const-string v3, "unregisterClient: token is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v3, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: client("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not registered!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->cleanUp()V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "PrivateModeManagerService"

    const-string v3, "unregisterClient: token is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v3, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: client("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not registered!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->cleanUp()V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0
.end method
