.class Lcom/android/phone/GsmUmtsOptions$1;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsOptions;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferenceTreeClick - set Sim slot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    # getter for: Lcom/android/phone/GsmUmtsOptions;->mSimId:I
    invoke-static {v3}, Lcom/android/phone/GsmUmtsOptions;->access$000(Lcom/android/phone/GsmUmtsOptions;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    const-string v1, "simSlot"

    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    # getter for: Lcom/android/phone/GsmUmtsOptions;->mSimId:I
    invoke-static {v2}, Lcom/android/phone/GsmUmtsOptions;->access$000(Lcom/android/phone/GsmUmtsOptions;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    # getter for: Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsOptions;->access$100(Lcom/android/phone/GsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    return v4
.end method
