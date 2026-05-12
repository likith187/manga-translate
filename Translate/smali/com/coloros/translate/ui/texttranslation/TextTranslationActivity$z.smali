.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 9

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAITranslate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const-string v3, "aiBtn"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    const-string v5, "aiContent"

    if-nez v1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v6}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v4

    :cond_4
    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v6, v1

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "aiBgOn"

    const-string v5, "aiBgNor"

    if-eqz p1, :cond_9

    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {p1, v7}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result v7

    if-le v6, v7, :cond_9

    .line 8
    iget-object v7, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v7}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v7, v4

    :cond_6
    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v8, Lcom/coloros/translate/R$drawable;->ai_btn_other_nor:I

    invoke-static {v5, v8}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v4

    :cond_7
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v7, Lcom/coloros/translate/R$drawable;->ai_btn_other_on:I

    invoke-static {v1, v7}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x42a80000    # 84.0f

    .line 10
    invoke-virtual {p1, v1}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result v1

    add-int/2addr v6, v1

    const/high16 v1, 0x43200000    # 160.0f

    .line 11
    invoke-virtual {p1, v1}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result p1

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showAITranslate realWidth : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , maxWidth : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v4, p0

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 14
    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    .line 15
    :cond_9
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->v1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_a
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v2, Lcom/coloros/translate/R$drawable;->ai_btn_cn_nor:I

    invoke-static {v0, v2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_b
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v1, Lcom/coloros/translate/R$drawable;->ai_btn_cn_on:I

    invoke-static {v0, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$z;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->x1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/RelativeLayout;

    move-result-object p0

    if-nez p0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v4, p0

    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 18
    sget-object p1, Lcom/coloros/translate/utils/j;->a:Lcom/coloros/translate/utils/j$a;

    const/high16 v0, 0x43040000    # 132.0f

    invoke-virtual {p1, v0}, Lcom/coloros/translate/utils/j$a;->a(F)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3
    return-void
.end method
