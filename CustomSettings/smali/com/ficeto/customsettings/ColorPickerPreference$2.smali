.class Lcom/ficeto/customsettings/ColorPickerPreference$2;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ficeto/customsettings/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ficeto/customsettings/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/ColorPickerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    sub-float v1, v3, v4

    :cond_2
    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerPreference;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    mul-float/2addr v3, v1

    sub-float v0, v5, v3

    cmpl-float v3, v0, v5

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->setHue(F)V
    invoke-static {v3, v0}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$2(Lcom/ficeto/customsettings/ColorPickerPreference;F)V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerPreference;->viewSatVal:Lcom/ficeto/customsettings/ColorPickerView;

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->getHue()F
    invoke-static {v4}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$1(Lcom/ficeto/customsettings/ColorPickerPreference;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ficeto/customsettings/ColorPickerView;->setHue(F)V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    invoke-virtual {v3}, Lcom/ficeto/customsettings/ColorPickerPreference;->moveCursor()V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerPreference;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I
    invoke-static {v4}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$3(Lcom/ficeto/customsettings/ColorPickerPreference;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v3, v3, Lcom/ficeto/customsettings/ColorPickerPreference;->rgbValue:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    iget-object v5, p0, Lcom/ficeto/customsettings/ColorPickerPreference$2;->this$0:Lcom/ficeto/customsettings/ColorPickerPreference;

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->getColor()I
    invoke-static {v5}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$3(Lcom/ficeto/customsettings/ColorPickerPreference;)I

    move-result v5

    # invokes: Lcom/ficeto/customsettings/ColorPickerPreference;->getRGB(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/ficeto/customsettings/ColorPickerPreference;->access$4(Lcom/ficeto/customsettings/ColorPickerPreference;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
