.class Lcom/touchtype/personalizer/PersonalizerPreference$2;
.super Ljava/lang/Object;
.source "PersonalizerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerPreference;->showLearnFromMessagesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerPreference;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->this$0:Lcom/touchtype/personalizer/PersonalizerPreference;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_messages"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_messages_checkbox"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerPreference$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "allow_app_permission_messages_checkbox"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
