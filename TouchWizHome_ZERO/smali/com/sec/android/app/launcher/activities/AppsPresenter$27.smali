.class Lcom/sec/android/app/launcher/activities/AppsPresenter$27;
.super Ljava/lang/Object;
.source "AppsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;->onItemLoadCompleted(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupPageIndicator()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$6500(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsPresenter$27;->this$0:Lcom/sec/android/app/launcher/activities/AppsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/AppsPresenter;->setupAdapter()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->access$6600(Lcom/sec/android/app/launcher/activities/AppsPresenter;)V

    return-void
.end method
