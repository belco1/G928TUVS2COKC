.class public abstract Lcom/touchtype_fluency/util/LanguagePackManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/touchtype_fluency/util/LanguagePackManager;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lcom/touchtype_fluency/util/LanguagePackManager;->a:Z

    return v0
.end method

.method public static getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/d;->a(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.1.1.1-build5"

    return-object v0
.end method

.method public static setUseDisconnectForCancel(Z)V
    .locals 0

    sput-boolean p0, Lcom/touchtype_fluency/util/LanguagePackManager;->a:Z

    return-void
.end method


# virtual methods
.method public abstract clearLPConfiguration()V
.end method

.method public abstract deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
.end method

.method public abstract downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
.end method

.method public abstract downloadLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z
.end method

.method public abstract enableDefaultLanguage(Lcom/touchtype_fluency/util/ProgressListener;)Lcom/touchtype_fluency/util/LanguagePack;
.end method

.method public abstract enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z
.end method

.method public abstract enableLiveLanguage(Lcom/touchtype_fluency/util/LiveLanguagePack;Z)Z
.end method

.method public abstract findLanguage(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;
.end method

.method public abstract forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V
.end method

.method public abstract getAllLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDynamicModel()Ljava/io/File;
.end method

.method public abstract getEnabledLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStorage()Lcom/touchtype_fluency/util/Storage;
.end method

.method public onRefreshAvailable(Ljava/net/URL;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract refresh(Lcom/touchtype_fluency/util/RefreshListener;)V
.end method

.method public abstract setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
.end method

.method public abstract setLanguageBroken(Lcom/touchtype_fluency/util/LanguagePack;)V
.end method

.method public abstract setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V
.end method

.method public abstract setMaxDownloads(I)V
.end method

.method public abstract verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation
.end method
