.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->init(III[FLcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$200(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;ZZZ)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$302(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$000(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;->this$0:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->access$002(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
