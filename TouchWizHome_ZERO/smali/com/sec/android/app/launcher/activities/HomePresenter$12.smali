.class Lcom/sec/android/app/launcher/activities/HomePresenter$12;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->setupPage(Lcom/sec/android/app/launcher/data/HomePageItem;ZZZ)Lcom/sec/android/app/launcher/views/HomePageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field final synthetic val$page:Lcom/sec/android/app/launcher/data/HomePageItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Lcom/sec/android/app/launcher/data/HomePageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$12;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$12;->val$page:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$12;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$12;->val$page:Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/HomePresenter;->updatePage(Lcom/sec/android/app/launcher/data/PageItem;)I

    return-void
.end method
