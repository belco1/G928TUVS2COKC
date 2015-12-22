.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;
.super Landroid/widget/FrameLayout;
.source "SViewCoverWeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;
    }
.end annotation


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String; = null

.field public static final CMA_PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.cmaweather.provider"

.field public static final CMA_SETTING_URI:Landroid/net/Uri;

.field public static final COL_CHECK_CURRENT_CITY_LOCATION:Ljava/lang/String; = "CHECK_CURRENT_CITY_LOCATION"

.field public static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field public static final DAEMON_CMAWEATHER:Ljava/lang/String; = "Cmaweather"

.field private static final DAEMON_DIVISION_2015:Ljava/lang/String; = "2015"

.field private static final DAEMON_DIVISION_TLOS:Ljava/lang/String; = "TLOS"

.field public static final DAEMON_JPWEATHER:Ljava/lang/String; = "weathernewsjp"

.field public static final DAEMON_KWEATHER:Ljava/lang/String; = "kweather"

.field public static final INVALID_TEMP:F = 999.0f

.field public static final KEY_CURRENT_CITY:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field public static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field public static final KEY_ERROR_BUNDLE:Ljava/lang/String; = "Error_Code"

.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_weather_icon_num"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field public static final KEY_SHOW_LOCK_AND_COVER:Ljava/lang/String; = "aw_daemon_service_key_lockscreen_and_s_view_cover"

.field public static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field public static final K_PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.kweather.provider"

.field public static final K_SETTING_URI:Landroid/net/Uri;

.field public static final LAYOUT_DIRECTION_TO_LTR:I = 0x0

.field public static final PEDOMETER_CLASS:Ljava/lang/String; = "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.sec.android.daemonapp.ap.accuweather.provider"

.field public static final SPLANNER_CLASS:Ljava/lang/String; = "sched"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEATHER_CLASS:Ljava/lang/String; = "com.android.keyguard.sec.AdaptiveEventManager.Weather"


# instance fields
.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mDaemonDivision:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

.field private mWeatherWidgetEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.daemonapp.cmaweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->CMA_SETTING_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.daemonapp.ap.kweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->K_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mDaemonDivision:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->init()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->requestWeatherDataSync()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V

    return-void
.end method

.method private getCPName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Cmaweather"

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isKoreaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "kweather"

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Accuweather"

    :cond_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCPName() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getDaemonDivision(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    if-nez p0, :cond_0

    move-object v9, v8

    :goto_0
    return-object v9

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DAEMON_DIVISION_CHECK"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDaemonDivisionCheck result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_4
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static getTemperatureUnit(I)I
    .locals 4

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherTempUnit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c_cn:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f_cn:I

    goto :goto_0

    :cond_0
    packed-switch p0, :pswitch_data_1

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_c:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_events_f:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_celsius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTemperatureUnitText() scale =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$string;->zzz_tts_temp_fahrenheit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getWeatherIconImage(I)I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherIconImage iconNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_sunny:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_sunny:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunny:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_mostlycloudy:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_rain:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_fog:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_shower:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywithshowers:I

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_thunderstorms:I

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywiththundershowers:I

    goto :goto_0

    :pswitch_9
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_flurries:I

    goto :goto_0

    :pswitch_a
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_partlysunnywithflurries:I

    goto :goto_0

    :pswitch_b
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_snow:I

    goto :goto_0

    :pswitch_c
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_rainandsnowmixed:I

    goto :goto_0

    :pswitch_d
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_ice:I

    goto :goto_0

    :pswitch_e
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_hot:I

    goto :goto_0

    :pswitch_f
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_cold:I

    goto :goto_0

    :pswitch_10
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_windy:I

    goto :goto_0

    :pswitch_11
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_clear:I

    goto :goto_0

    :pswitch_12
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_ic_mostlyclear:I

    goto :goto_0

    :pswitch_13
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_20:I

    goto :goto_0

    :pswitch_14
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_21:I

    goto :goto_0

    :pswitch_15
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->weather_icon_b_22:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private handleUpdateWeatherWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setIconNumber(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTempScale(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setHighTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setLowTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setTrusted(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    const-string v1, "aw_daemon_service_key_lockscreen_and_s_view_cover"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->setShowLockAndCover(I)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->dump()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    const-string v1, "WeatherInfo won\'t update because trusted is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getCPName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    const-string v0, "Cmaweather"

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.cmaweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getDaemonDivision(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mDaemonDivision:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "kweather"

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.kweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "weathernewsjp"

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.weathernewsjpdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    goto :goto_0
.end method

.method private isValidCurrentTemp()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v0

    const v1, 0x4479c000    # 999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestWeatherDataSync()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static toDigitString(I)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_0

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toDigitString() number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", string = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateWeatherInfo(Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;)V
    .locals 24

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_container:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_icon:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getIconNumber()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getWeatherIconImage(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->isValidCurrentTemp()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v8

    sget-object v20, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleWeatherUpdate() outside [high, low] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v23

    invoke-static/range {v22 .. v23}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getCurrentTemperature()F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v20, "ar"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "fa"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_1
    sget-object v20, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    const-string v21, "Current language is Arabic"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v13}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->toDigitString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :goto_1
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnit(I)I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isChinaFeature()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getHighTemperature()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getLowTemperature()F

    move-result v11

    sget-object v20, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleWeatherUpdate() inside [high, low] = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_high_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_low_temp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_Separator:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_high_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    sget v20, Lcom/sec/android/sviewcover/R$id;->weather_small_low_unit:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->getTempScale()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->getTemperatureUnitText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1
.end method

.method private updateWeatherWidgetVisibility()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "2015"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mDaemonDivision:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TLOS"

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mDaemonDivision:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->isWeatherWidgetEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isTrusted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherInfo:Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->isShowLockAndCover()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    :goto_1
    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWeatherWidgetVisibility() mWeatherWidgetEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->setVisibility(I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mWeatherWidgetEnabled:Z

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    goto :goto_2
.end method


# virtual methods
.method public isWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v10

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACCU_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCKSCREEN_AND_S_VIEW_COVER"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWeatherWidgetEnabled result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_4

    move v1, v9

    :goto_3
    move v10, v1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v7

    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_4
    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "occur SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    move v1, v10

    goto :goto_3
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->updateWeatherWidgetVisibility()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method
