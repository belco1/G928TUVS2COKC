.class Lcom/android/settings/fingerprint/FingerprintEntry$1$1$1;
.super Ljava/lang/Object;
.source "FingerprintEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/fingerprint/FingerprintEntry$1$1;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEntry$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1$1;->this$2:Lcom/android/settings/fingerprint/FingerprintEntry$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1$1;->this$2:Lcom/android/settings/fingerprint/FingerprintEntry$1$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEntry$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEntry$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEntry$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEntry;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEntry;->access$400(Lcom/android/settings/fingerprint/FingerprintEntry;)V

    return-void
.end method
