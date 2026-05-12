.class public final Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->N0(Ljava/lang/String;Lw8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coui/appcompat/edittext/COUIEditText;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/view/View;

.field final synthetic f:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;Landroid/widget/TextView;Landroid/view/View;Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->c:Landroid/view/View;

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->f:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousBaseActivity"

    const-string v2, "addTextChangedListener afterTextChanged"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->f:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;->I0(Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;)Landroidx/appcompat/app/c;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->f(I)Landroid/widget/Button;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "SimultaneousBaseActivity"

    const-string p2, "addTextChangedListener beforeTextChanged"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->a:Lcom/coui/appcompat/edittext/COUIEditText;

    iget-object p3, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->c:Landroid/view/View;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity$c;->f:Lcom/coloros/translate/ui/simultaneous/history/SimultaneousBaseActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/utils/a;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p2, v1, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p2, v2, p4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_1
    :goto_0
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRenameDialog onTextChanged name is too long:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "SimultaneousBaseActivity"

    invoke-virtual {p2, p4, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/support/appcompat/R$color;->coui_color_error:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/support/appcompat/R$color;->coui_color_label_theme_blue:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    :goto_1
    return-void
.end method
