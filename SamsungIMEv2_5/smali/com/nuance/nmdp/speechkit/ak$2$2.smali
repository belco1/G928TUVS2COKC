.class final Lcom/nuance/nmdp/speechkit/ak$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/ak$2;->a(Lcom/nuance/nmdp/speechkit/em;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/em;

.field private synthetic b:Lcom/nuance/nmdp/speechkit/ak$2;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/ak$2;Lcom/nuance/nmdp/speechkit/em;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/ak$2$2;->b:Lcom/nuance/nmdp/speechkit/ak$2;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/ak$2$2;->a:Lcom/nuance/nmdp/speechkit/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/ak$2$2;->b:Lcom/nuance/nmdp/speechkit/ak$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ak$2;->a:Lcom/nuance/nmdp/speechkit/ak;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/ak;->a:Lcom/nuance/nmdp/speechkit/aj;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak$2$2;->a:Lcom/nuance/nmdp/speechkit/em;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/em;->g()I

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/ak$2$2;->a:Lcom/nuance/nmdp/speechkit/em;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/em;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/aj;->a(Ljava/lang/String;)V

    return-void
.end method
