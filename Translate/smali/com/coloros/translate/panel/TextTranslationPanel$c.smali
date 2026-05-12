.class public final Lcom/coloros/translate/panel/TextTranslationPanel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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


# direct methods
.method constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->y(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->V()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/base/R$dimen;->common_dp_32:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->J(Lcom/coloros/translate/panel/TextTranslationPanel;I)V

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->V()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/utils/f0;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->V()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/translate/utils/f0;->a(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNavigationBarHeight,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextTranslationPanel"

    invoke-virtual {v1, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->A(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->V()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/base/R$dimen;->common_dp_8:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->J(Lcom/coloros/translate/panel/TextTranslationPanel;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->H(Lcom/coloros/translate/panel/TextTranslationPanel;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->A(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->V()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/base/R$dimen;->common_dp_16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->J(Lcom/coloros/translate/panel/TextTranslationPanel;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->A(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v2}, Lcom/coloros/translate/panel/TextTranslationPanel;->V()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/coloros/translate/base/R$dimen;->common_dp_6:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->J(Lcom/coloros/translate/panel/TextTranslationPanel;I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {v0}, Lcom/coloros/translate/panel/TextTranslationPanel;->y(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-static {v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->A(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$c;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->z(Lcom/coloros/translate/panel/TextTranslationPanel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->P(Lcom/coloros/translate/panel/TextTranslationPanel;IZ)V

    return-void
.end method
