.class public Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Email;
.super Ljava/lang/Object;
.source "CallerInfoCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Email"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Email;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
