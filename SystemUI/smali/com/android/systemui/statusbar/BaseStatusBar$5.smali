.class Lcom/android/systemui/statusbar/BaseStatusBar$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, -0x1

    if-nez p2, :cond_1

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxNotification"

    const-string v7, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "policyChangedBundle"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxNotification"

    const-string v7, " onReceive RCP_POLICY_CHANGED bundle is null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "policyChangedBundle"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxNotification"

    const-string v7, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "KnoxNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "personaId"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "syncerList"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "policyName"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "policyValue"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eq v1, v9, :cond_5

    if-eqz v5, :cond_5

    if-nez v3, :cond_6

    :cond_5
    const-string v6, "KnoxNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " syncerList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " policyName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "Notifications"

    const-string v6, "Notifications"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeDataPolicyForUserCache:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$600()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mSanitizeLockScreenDataPolicyForUserCache:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$700()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mExportDataPolicyForUserCache:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$800()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mImportDataPolicyForUserCache:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$900()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->KNOX_DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxNotification"

    const-string v7, "Notification RCP policy is updated"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
