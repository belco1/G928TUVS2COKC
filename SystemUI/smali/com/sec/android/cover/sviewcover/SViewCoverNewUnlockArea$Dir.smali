.class final enum Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
.super Ljava/lang/Enum;
.source "SViewCoverNewUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Dir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

.field public static final enum Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

.field public static final enum Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

.field public static final enum Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    new-instance v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const-string v1, "Up"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Right:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->$VALUES:[Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->$VALUES:[Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    invoke-virtual {v0}, [Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    return-object v0
.end method
