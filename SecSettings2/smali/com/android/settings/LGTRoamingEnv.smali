.class public Lcom/android/settings/LGTRoamingEnv;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LGTRoamingEnv.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private curSimVer:Ljava/lang/String;

.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCountryUpdate:Landroid/preference/Preference;

.field private mButtonReset:Landroid/preference/Preference;

.field private mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsRoamingNetworkInit:Z

.field private mIsWaitRadioPowerOff:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    iput-boolean v1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    new-instance v0, Lcom/android/settings/LGTRoamingEnv$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$1;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/LGTRoamingEnv$2;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$2;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/LGTRoamingEnv$3;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$3;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/LGTRoamingEnv$4;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$4;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/LGTRoamingEnv$5;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$5;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/LGTRoamingEnv$6;

    invoke-direct {v0, p0}, Lcom/android/settings/LGTRoamingEnv$6;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LGTRoamingEnv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->getSIMVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsWaitRadioPowerOff:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/LGTRoamingEnv;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/LGTRoamingEnv;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/LGTRoamingEnv;->mIsRoamingNetworkInit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/LGTRoamingEnv;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->setAuto()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/LGTRoamingEnv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/LGTRoamingEnv;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/LGTRoamingEnv;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->isRoamingArea()Z

    move-result v0

    return v0
.end method

.method private getRejectValue()I
    .locals 8

    const/4 v7, 0x1

    const-string v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Idle"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    const-string v4, "GlobalRoaming"

    const-string v5, "ril is empty or error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const-string v4, "GlobalRoaming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTSValues="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v7

    const-string v5, "Idle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getSIMVersion()Ljava/lang/String;
    .locals 5

    const-string v2, "gsm.sim.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    const-string v2, "GlobalRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimVer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isRoamingArea()Z
    .locals 2

    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private resetSettings()V
    .locals 3

    const-string v0, "GlobalRoaming"

    const-string v1, "resetSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a14b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a14b6    # 1.83541E38f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mRoamNetworkInitListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setAuto()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DialogType"

    const-string v3, "RESET"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/LGTRoamingEnv;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCountryInfo()V
    .locals 12

    const v3, 0x1040013

    const/4 v4, 0x0

    const/4 v11, 0x0

    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    :try_start_0
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->getRejectValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v1, 0x7f0a1466

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v1, 0x7f0a1467

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a143f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a14b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a14b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mDisabledMobileDataClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "kr.co.uplus.UPDATE_COUNTRY_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.sec.MDM_ROAMING"

    iget-object v3, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v11}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v2, 0x7f0a1438

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/LGTRoamingEnv$7;

    invoke-direct {v1, p0}, Lcom/android/settings/LGTRoamingEnv$7;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/LGTRoamingEnv$8;

    invoke-direct {v1, p0}, Lcom/android/settings/LGTRoamingEnv$8;-><init>(Lcom/android/settings/LGTRoamingEnv;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "gsm.sim.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->curSimVer:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->finish()V

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->addPreferencesFromResource(I)V

    const-string v0, "button_country_update"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    const-string v0, "button_reset_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/LGTRoamingEnv;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/preference/Preference;

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LGTRoamingEnv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "GlobalRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->updateCountryInfo()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonReset:Landroid/preference/Preference;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->resetSettings()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/LGTRoamingEnv;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/LGTRoamingEnv;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LGTRoamingEnv;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/LGTRoamingEnv;->mButtonCountryUpdate:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
