.class public Lcom/android/settings/TrustAgentUtils;
.super Ljava/lang/Object;
.source "TrustAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    }
.end annotation


# direct methods
.method public static checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z
    .locals 4

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TrustAgentUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping agent because package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .locals 13

    if-eqz p1, :cond_0

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_0

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_2

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    const/4 v2, 0x0

    new-instance v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    invoke-direct {v8}, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;-><init>()V

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v11, "android.service.trust.trustagent"

    invoke-virtual {v10, p0, v11}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v10, "TrustAgentUtils"

    const-string v11, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    :cond_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "trust-agent"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "TrustAgentUtils"

    const-string v11, "Meta-data does not start with trust-agent tag"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :cond_6
    :try_start_2
    sget-object v10, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v6, v0, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    const-string v10, "TrustAgentUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v1, v3

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v1, v3

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :catchall_0
    move-exception v10

    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    throw v10

    :cond_9
    if-eqz v2, :cond_a

    const/16 v10, 0x2f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    const/4 v10, 0x0

    :goto_2
    iput-object v10, v8, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_b
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_2
.end method
