.class Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsFilter;
.super Ljava/lang/Object;
.source "ZeroPageListPresenter.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/PresenterBase$ItemFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetsFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ZeroPageListPresenter$WidgetsFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public isInWatchList(Lcom/sec/daliviews/views/Item;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/launcher/data/ZeroPageListItem;

    return v0
.end method
