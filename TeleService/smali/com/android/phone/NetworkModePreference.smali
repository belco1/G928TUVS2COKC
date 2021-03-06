.class public Lcom/android/phone/NetworkModePreference;
.super Landroid/preference/ListPreference;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkModePreference$MyHandler2;,
        Lcom/android/phone/NetworkModePreference$MyHandler;,
        Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;
    }
.end annotation


# static fields
.field private static mImsDereg:Z

.field public static mPrevNetworkType:[I

.field private static mRegister:Z

.field private static sChangeNetworkType_Step2:I

.field private static sNetworkTypeSim0:I

.field private static sNetworkTypeSim1:I

.field private static sNetworkTypeSim2:I

.field private static sSetEnableForCrossMapping:Z

.field private static sSetEnabled:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field lteon:Z

.field private mActivePhoneId:I

.field mActivityExist:Z

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonDataEnabled:Landroid/preference/TwoStatePreference;

.field private mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataEnabled:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDisplayDataPreferredSlotChangeDialog:Z

.field mFailDialog:Landroid/app/AlertDialog;

.field private mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

.field private mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private mIsDisconnectingData:Z

.field private mIsOtherPhone3G:Z

.field private mLTEOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mLTEOnlyWarningDialog:Landroid/app/AlertDialog;

.field private mNetworkType:I

.field private mNetworkTypeForStep2:I

.field private mOldNetworkType:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTriggerChangeNetwork:Z

.field private summaryString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    sput v2, Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I

    sput-boolean v3, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    sput-boolean v3, Lcom/android/phone/NetworkModePreference;->sSetEnableForCrossMapping:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v1, v0, v2

    aput v3, v0, v3

    sput-object v0, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    sput-boolean v2, Lcom/android/phone/NetworkModePreference;->mImsDereg:Z

    sput-boolean v2, Lcom/android/phone/NetworkModePreference;->mRegister:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NetworkModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "NetworkModePreference"

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mDisplayDataPreferredSlotChangeDialog:Z

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mDataEnabled:Z

    iput v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkTypeForStep2:I

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mTriggerChangeNetwork:Z

    const/4 v1, 0x7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    iput-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mActivityExist:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    new-instance v1, Lcom/android/phone/NetworkModePreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$1;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v1, Lcom/android/phone/NetworkModePreference$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$2;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/phone/NetworkModePreference$4;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$4;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/NetworkModePreference$8;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$8;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mLTEOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/NetworkModePreference$9;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$9;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/NetworkModePreference$10;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkModePreference$10;-><init>(Lcom/android/phone/NetworkModePreference;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v1, "true"

    const-string v2, "persist.radio.lteon"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lteon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v1, "ril_network_on"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    if-eqz v1, :cond_1

    const-string v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setLTElist()V

    :goto_0
    new-instance v1, Lcom/android/phone/NetworkModePreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->initForMultisim()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->set3Glist()V

    goto :goto_0

    :cond_2
    const-string v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setLTElist()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->set3Glist()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkModePreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkModePreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0

    sput p0, Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkModePreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkTypeForStep2:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkTypeForStep2:I

    return p1
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    return v0
.end method

.method static synthetic access$1402(I)I
    .locals 0

    sput p0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    return p0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .locals 0

    sput p0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkModePreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkModePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mTriggerChangeNetwork:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkModePreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkModePreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/NetworkModePreference;->mDisplayDataPreferredSlotChangeDialog:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mDisplayDataPreferredSlotChangeDialog:Z

    return p1
.end method

.method static synthetic access$2502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/NetworkModePreference;->sSetEnableForCrossMapping:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->displayDataPreferredSlotChangeDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkModePreference;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/NetworkModePreference;Landroid/preference/TwoStatePreference;)Landroid/preference/TwoStatePreference;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->getLTEsummary()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->get3Gsummary()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setLTElist()V

    return-void
.end method

.method static synthetic access$3100()I
    .locals 1

    sget v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/NetworkModePreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/NetworkModePreference;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/NetworkModePreference;->mImsDereg:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeDataServiceForMultisim()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkModePreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/NetworkModePreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    return-object v0
.end method

.method private changeDataServiceForMultisim()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Change data service network"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SimSetPreferLTE"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v3, "set SimSetPreferLTE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetDataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_0
    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->setDefaultDataSubId(I)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->sendBroadcastDataButtonEnableIntent()V

    return-void
.end method

.method private changeNetworkType()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkTypeForMultisim()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeNetworkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnablePromptWhenSelectLTEOnlyNetMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0471

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a069e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mLTEOnlyWarningAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->mLTEOnlyWarningDialog:Landroid/app/AlertDialog;

    :cond_1
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LTEON ] Network mode is Automode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<< current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.radio.netmode.auto"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[LTEON ]User change YES"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.radio.user.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "persist.radio.setnwkmode"

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LTEON ] Network mode is G or W only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<< current mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.radio.netmode.auto"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private changeNetworkTypeForMultisim()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v2, "summaryString is null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ril_network_on"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->lteon:Z

    if-eqz v1, :cond_3

    const-string v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->getLTEsummary()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeNetworkTypeForMultisim getValue():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  activeSimNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  mIsOtherPhone3G:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sim2_2g_only"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-le v0, v4, :cond_1

    const-string v1, "disable_change_network_mode_for_none_bolt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkModePreference;->isShouldDimNetworkMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->isShouldDimNetworkMode(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkTypeForMultisim()V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeNetworkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->get3Gsummary()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->getLTEsummary()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->get3Gsummary()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getActivatedSimNum(mContext) == 2"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_7

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkTypeForMultisim()V

    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mDisplayDataPreferredSlotChangeDialog:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_9

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-eqz v1, :cond_9

    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mDisplayDataPreferredSlotChangeDialog:Z

    const-string v1, "qcom_cross_mapping"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkTypeForMultisim()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->handleNetworkModeChangeForMultiSIM()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setNetworkTypeForMultisim()V

    goto/16 :goto_1
.end method

.method private containsSubId(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private displayDataPreferredSlotChangeDialog()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDataPreferredSlotChangeDialog mDataEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mDataEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v2, p0, Lcom/android/phone/NetworkModePreference;->mDataEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v6

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v6

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDataPreferredSlotChangeDialog defaultDataSubId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDataPreferredSlotChangeDialog ActivePhondSubId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSubIdUsingPhoneId(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Don\'t need change data service network, already activePhone is dataPrefered SIM."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "AddDataLock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[DataLockFeature] Don\'t need change data service network."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayDataPreferredSlotChangeDialog mContext:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivityExist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mActivityExist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/phone/MobileNetworkSettings;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/phone/NetworkModePreference;->mActivityExist:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0a069c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a069d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/phone/NetworkModePreference$6;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkModePreference$6;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/android/phone/NetworkModePreference$5;

    invoke-direct {v4, p0}, Lcom/android/phone/NetworkModePreference$5;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method private dualSimMPS_DataLock(I)Z
    .locals 5

    const-string v2, "AddDataLock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, p1

    const-string v2, "persist.radio.networklocklist"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v3, "DataLockFeature is disable"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private get3Gsummary()[Ljava/lang/String;
    .locals 2

    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "cust_network_sel_menu4_sfr"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "cust_network_sel_menu4_via"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "display_tdscdma_instead_of_wcdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getLTEsummary()[Ljava/lang/String;
    .locals 2

    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "network_mode_not_support_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "remove_network_mode_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "cust_network_sel_menu4_atl_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "cust_network_sel_menu4_sfr"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "cust_network_sel_menu4_via"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "cust_network_sel_menu4_lteonly"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v0, "network_mode_list_dcm_lte_3g"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v0, "network_mode_list_jpn_sbm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v0, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "network_mode_cmcc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "sim2_2g_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->isCmccSimAnd2gSim()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v0, "use_simple_network_word"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPreferredNetworkTypeForMultisim()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyHandler - getPreferredNetworkTypeForMultisim SimState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eq v0, v6, :cond_0

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v3, v5}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mIsOtherPhone3G:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v2

    if-le v2, v6, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-eq v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyHandler2 - getPreferredNetworkTypeForMultisim simSlotNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    invoke-virtual {v3, v5}, Lcom/android/phone/NetworkModePreference$MyHandler2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleNetworkModeChangeForMultiSIM()V
    .locals 4

    const-string v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a061a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/phone/NetworkModePreference$7;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$7;-><init>(Lcom/android/phone/NetworkModePreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0619

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initForMultisim()V
    .locals 3

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v1, Lcom/android/phone/NetworkModePreference$MyHandler2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/NetworkModePreference$MyHandler2;-><init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mOtherHandler:Lcom/android/phone/NetworkModePreference$MyHandler2;

    :cond_2
    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput v1, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NetworkModePreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    goto :goto_0
.end method

.method private isShouldDimNetworkMode(I)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-nez v1, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePhoneStateListeners()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private set3Glist()V
    .locals 2

    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_3
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09003d

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_4
    const-string v0, "cust_network_sel_menu4_sfr"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_5
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_6
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "cust_network_sel_menu4_via"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const v0, 0x7f090040

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "display_tdscdma_instead_of_wcdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_b
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0
.end method

.method private setEnabledMenu(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    return-void
.end method

.method private setLTElist()V
    .locals 2

    const-string v0, "remove_network_mode_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "network_mode_not_support_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_1
    const-string v0, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_2
    const-string v0, "remove_network_mode_wcdma_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_3
    const-string v0, "remove_network_mode_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_4
    const-string v0, "cust_network_sel_menu4_atl_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_5
    const-string v0, "cust_network_sel_menu4_o2"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto :goto_0

    :cond_6
    const-string v0, "cust_network_sel_menu4_orange"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "cust_network_sel_menu4_sfr"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "cust_network_sel_menu4_vodafone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "cust_network_sel_menu4_yog"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "cust_network_sel_menu4_via"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "cust_network_sel_menu4_numeric"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "networkmode_in_can"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    const v0, 0x7f090036

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "cust_network_sel_menu4_lteonly"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "network_mode_list_dcm_lte_3g"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "network_mode_list_jpn_sbm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "network_mode_cmcc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "sim2_2g_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->isCmccSimAnd2gSim()Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_11
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "use_simple_network_word"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0

    :cond_13
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntries(I)V

    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEntryValues(I)V

    goto/16 :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4

    const-string v1, "dcm_change_data_enable_function"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneProxy.setInternalDataEnabled value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTelephonyManager.setDataEnabled value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0
.end method

.method private setNetworkTypeForMultisim()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivePhoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iput v0, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "qcom_cross_mapping"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start sChangeNetworkTypeForCrossMapping CHN sNetworkTypeSim0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sNetworkTypeSim1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    invoke-static {v0, v1, v4, v2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    sget v2, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    invoke-static {v0, v1, v3, v2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->printPreferredNetworkModeValue()V

    sput-boolean v4, Lcom/android/phone/NetworkModePreference;->sSetEnableForCrossMapping:Z

    :cond_1
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-nez v0, :cond_4

    const-string v0, "persist.radio.user.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhones:[Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkModePreference;->sendBroadcastButtonEnableIntent(Z)V

    sput-boolean v4, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    return-void

    :cond_2
    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-ne v0, v3, :cond_3

    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    sput v3, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    sput v0, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->summaryString:[Ljava/lang/String;

    sget v1, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "persist.radio.user.change"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public checkAndSetEnabledForCMCC()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "1"

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCHN;->isChinaSIM(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public checkAndSetEnabledForMultiSIM()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v0

    const-string v5, "false"

    const-string v6, "ril.SetEnabledFlag"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndSetEnabledForMultiSIM mActivePhoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setEnabledFlag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SimState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sSetEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " simStateIsNotReady:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sSetEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/phone/NetworkModePreference;->sSetEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v4, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I

    # invokes: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$300(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    :goto_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v4, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I

    # invokes: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$300(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    sget v4, Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I

    # invokes: Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->access$300(Lcom/android/phone/NetworkModePreference$MyHandler;I)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simStateIsNotReady :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkModePreference;->dualSimMPS_DataLock(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto :goto_1

    :cond_7
    const-string v5, "network_mode_only_cmcc_card_support_4g"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->isChinaSimButNotCmccSim()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "According to CMCC specification, disable to choose network mode #1"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto :goto_1

    :cond_8
    const-string v5, "network_mode_cmcc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "sim2_2g_only"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->isCmccSimAnd2gSim()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "According to CMCC specification, disable to choose network mode #2"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto :goto_1

    :cond_9
    const-string v5, "sim2_2g_only"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-ne v5, v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Slot2 support 2g only. user could not choose network mode so disable it"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "disable_change_network_mode_for_none_bolt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkModePreference;->isShouldDimNetworkMode(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Disable change network mode for none Bolt Sim"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v5, "chn_cdma_network_on_all_rat"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-nez v5, :cond_c

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "If device support 6-mode and ctc card is inserted in slot2, should disable network mode of slot1"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto/16 :goto_1

    :cond_c
    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    if-ne v5, v3, :cond_d

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "If device support 6-mode and ctc card is inserted in slot1, should disable network mode of slot2"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto/16 :goto_1

    :cond_d
    if-nez v1, :cond_e

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEnabledFlag :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto/16 :goto_1

    :cond_e
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkAndSetEnabledForMultiSIM - No reason to disable so enable this preference"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkModePreference;->setEnabledMenu(Z)V

    goto/16 :goto_1
.end method

.method public dataConnectionStateChanged(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged. state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Should not be here! Do cancel operation!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    invoke-virtual {v2, v5}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/NetworkModePreference;->mTriggerChangeNetwork:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Data is disconnected, so start changing network mode"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v5, p0, Lcom/android/phone/NetworkModePreference;->mTriggerChangeNetwork:Z

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/phone/MobileNetworkSettings;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->removeDialog(I)V

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public deinitPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deinitPhoneStateListener..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->removePhoneStateListeners()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public getPreferredNetworkType()V
    .locals 3

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkTypeForMultisim()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public initPhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initPhoneStateListener..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public isChinaSimButNotCmccSim()Z
    .locals 1

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isChinaSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCmccSimAnd2gSim()Z
    .locals 2

    const-string v0, "1"

    iget v1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 8

    const v7, 0x7f0a0282

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v4, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDialogClosed, mNetworkType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOldNetworkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    if-ne v3, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    iput v2, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget v2, p0, Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDialogClosed : change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/NetworkModePreference;->mNetworkType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Data state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mDataEnabled:Z

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_5

    move v0, v2

    :goto_1
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->isMultiSimIdleState()Z

    move-result v0

    :cond_4
    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Phone State is Not IDLE!"

    invoke-static {v4, v5, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0a027b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0391

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkModePreference;->mFailDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/android/phone/NetworkModePreference;->mDataEnabled:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    if-ne v1, v2, :cond_9

    :cond_7
    const-string v4, "network_selection_delay"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v1, v2, :cond_8

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Currently Data is connecting!"

    invoke-static {v4, v5, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/phone/MobileNetworkSettings;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;

    new-instance v3, Lcom/android/phone/NetworkModePreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkModePreference$3;-><init>(Lcom/android/phone/NetworkModePreference;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/NetworkModePreference$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Currently Data is conncected!"

    invoke-static {v4, v5, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0a018c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0a018b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0a008e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mDisconnectDataConnectionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->changeNetworkType()V

    goto/16 :goto_0
.end method

.method public sendBroadcastButtonEnableIntent()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkModePreference;->sendBroadcastButtonEnableIntent(Z)V

    return-void
.end method

.method public sendBroadcastButtonEnableIntent(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.ButtonEnable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "updateFromRil"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastButtonEnableIntent updateFromRil:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendBroadcastDataButtonEnableIntent()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendBroadcastDataButtonEnableIntent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sk.action.dataButtonEnable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setActivityExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/NetworkModePreference;->mActivityExist:Z

    return-void
.end method

.method public setNetworkModePreference(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkModePreference"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkModePreference activePhone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/phone/NetworkModePreference;->mActivePhoneId:I

    const-string v0, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network_mode_cmcc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sim2_2g_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->isCmccSimAnd2gSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->setLTElist()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkModePreference;->set3Glist()V

    goto :goto_0
.end method

.method public updateNetworkTypeAndEnabledStateForMultiSim()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference;->LOG_TAG:Ljava/lang/String;

    const-string v1, "updateNetworkTypeAndEnabledStateForMultiSim"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->getPreferredNetworkType()V

    invoke-virtual {p0}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    return-void
.end method

.method public updatePhoneStateListeners()V
    .locals 8

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v4, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/phone/NetworkModePreference;->containsSubId(Ljava/util/List;I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    iget-object v6, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v2, Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/NetworkModePreference$NetworkModePhoneStateListener;-><init>(Lcom/android/phone/NetworkModePreference;I)V

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x40

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference;->mPhoneStateListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
