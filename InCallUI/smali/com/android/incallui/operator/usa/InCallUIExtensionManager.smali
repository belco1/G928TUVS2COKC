.class public Lcom/android/incallui/operator/usa/InCallUIExtensionManager;
.super Ljava/lang/Object;
.source "InCallUIExtensionManager.java"


# static fields
.field private static final sInstance:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;


# instance fields
.field private mCallRoamingGuardDialog:Landroid/app/AlertDialog;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    invoke-direct {v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->sInstance:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I

    new-instance v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$1;-><init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mServiceState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog()V

    return-void
.end method

.method private dismissCallRoamingGuardDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getCallRoamingGuardMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const v4, 0x7f0d0304

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallRoamingGuardMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isRoamingSettingInService()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isDomesticRoamingSettingInService()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0303

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoamingSettingInService()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->sInstance:Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    return-object v0
.end method

.method private showCallRoamingGuardDialog(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$3;-><init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager$2;-><init>(Lcom/android/incallui/operator/usa/InCallUIExtensionManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showHDVoiceCallText(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 5

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHDVoiceCallText - show : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0313

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public dismissCallRoamingGuardDialog(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->isCallRoamingGuardDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->dismissCallRoamingGuardDialog()V

    :cond_1
    return-void
.end method

.method public isCallRoamingGuardDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mCallRoamingGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;Z)V

    return-void
.end method

.method public showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;Z)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getCallRoamingGuardMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showHDVoiceCallIcon(Landroid/view/View;Landroid/view/View;Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHDVoiceCallIcon - show : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public telephonyManager(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public updateHDVoiceCallText(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    packed-switch p3, :pswitch_data_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallText(Landroid/content/Context;Landroid/view/View;Z)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showHDVoiceCallText(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
