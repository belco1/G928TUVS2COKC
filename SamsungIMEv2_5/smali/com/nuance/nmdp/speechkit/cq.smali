.class public final Lcom/nuance/nmdp/speechkit/cq;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x40

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/nuance/nmdp/speechkit/cq;->b:Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/nuance/nmdp/speechkit/cq;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    sget-object v2, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x3d

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x2

    new-array v7, v2, [B

    add-int/lit8 v8, v0, 0x0

    move v4, v1

    move v0, v1

    move v3, v1

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-byte v5, p0, v6

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_0

    move v2, v3

    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v4, v5

    move v6, v3

    move v3, v2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    shr-int/lit8 v9, v5, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v4, v4, v9

    aput-byte v4, v7, v3

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    sget-object v9, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x30

    shr-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v4, v10

    aget-byte v4, v9, v4

    aput-byte v4, v7, v3

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    sget-object v0, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3c

    shr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v4, v9

    aget-byte v0, v0, v4

    aput-byte v0, v7, v3

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    and-int/lit8 v4, v5, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v7, v2

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    packed-switch v0, :pswitch_data_1

    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :pswitch_3
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    shl-int/lit8 v2, v4, 0x4

    and-int/lit8 v2, v2, 0x30

    aget-byte v1, v1, v2

    aput-byte v1, v7, v3

    add-int/lit8 v1, v0, 0x1

    aput-byte v11, v7, v0

    aput-byte v11, v7, v1

    goto :goto_2

    :pswitch_4
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/nuance/nmdp/speechkit/cq;->a:[B

    shl-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0x3c

    aget-byte v1, v1, v2

    aput-byte v1, v7, v3

    aput-byte v11, v7, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
