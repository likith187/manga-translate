.class public final Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;
.super Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/panel/TextTranslationPanel;->a(Ljava/lang/String;ILjava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;

.field final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iput-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior$COUIBottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 2

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->G(Lcom/coloros/translate/panel/TextTranslationPanel;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TextTranslationPanel"

    const-string p2, "isSmallScreen ignore onSlide"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDialogHeight()I

    move-result p1

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->z(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float v0, p1

    mul-float/2addr p2, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p2}, Lcom/coloros/translate/panel/TextTranslationPanel;->z(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDialogHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->H0(Lcom/coloros/translate/panel/TextTranslationPanel;IZILjava/lang/Object;)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 2

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->B(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result p1

    if-eq p1, p2, :cond_4

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v1, p2}, Lcom/coloros/translate/panel/TextTranslationPanel;->K(Lcom/coloros/translate/panel/TextTranslationPanel;I)V

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p2, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->M(Lcom/coloros/translate/panel/TextTranslationPanel;Z)V

    :cond_2
    iget-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p2}, Lcom/coloros/translate/panel/TextTranslationPanel;->F(Lcom/coloros/translate/panel/TextTranslationPanel;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p2, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->L(Lcom/coloros/translate/panel/TextTranslationPanel;Z)V

    iget-object p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p2, p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->M(Lcom/coloros/translate/panel/TextTranslationPanel;Z)V

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->O(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$show$1$2$1;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->B(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged:panelState has not change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TextTranslationPanel"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
