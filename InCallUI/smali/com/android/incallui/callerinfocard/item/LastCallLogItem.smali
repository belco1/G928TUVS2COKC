.class public Lcom/android/incallui/callerinfocard/item/LastCallLogItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "LastCallLogItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 4

    const v1, 0x7f0202f8

    iput v1, p0, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->mIconRes:I

    const v1, 0x7f0d0314

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->mContent:Ljava/lang/String;

    const-string v1, "date"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/LastCallLogItem;->mDate:Ljava/lang/String;

    :cond_0
    return-void
.end method
