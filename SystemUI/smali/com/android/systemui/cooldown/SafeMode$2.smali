.class Lcom/android/systemui/cooldown/SafeMode$2;
.super Ljava/lang/Object;
.source "SafeMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cooldown/SafeMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cooldown/SafeMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/cooldown/SafeMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/cooldown/SafeMode$2;->this$0:Lcom/android/systemui/cooldown/SafeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "SafeMode"

    const-string v1, "click Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cooldown/SafeMode$2;->this$0:Lcom/android/systemui/cooldown/SafeMode;

    invoke-virtual {v0}, Lcom/android/systemui/cooldown/SafeMode;->finish()V

    return-void
.end method
