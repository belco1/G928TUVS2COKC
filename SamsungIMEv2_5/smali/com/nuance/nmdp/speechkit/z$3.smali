.class final Lcom/nuance/nmdp/speechkit/z$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/z;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/z;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/z;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/z$3;->a:Lcom/nuance/nmdp/speechkit/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/z$3;->a:Lcom/nuance/nmdp/speechkit/z;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/z;->d(Lcom/nuance/nmdp/speechkit/z;)Lcom/nuance/nmdp/speechkit/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/y;->cancel()V

    return-void
.end method
