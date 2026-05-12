.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)J

    move-result-wide v3

    iput v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/k0;->a(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    const-string p1, "inputET"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v1, "getText(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->w2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    const-string v3, "resultTV"

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_7
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    const/4 v4, 0x0

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->j2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationActivity"

    const-string v1, "calculateFrameHeight return and retry"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    :cond_8
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_9
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v4}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->E2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_a
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_b
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p1

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_c
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_d
    invoke-virtual {v2}, Landroid/widget/TextView;->getMinHeight()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v0

    :cond_e
    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v2

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->l2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v4

    const-string v5, "resultFrame"

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v4

    if-nez v4, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_f
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v0

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v4

    if-nez v4, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_11
    invoke-virtual {v4}, Landroid/widget/TextView;->getMinHeight()I

    move-result v4

    if-ge p1, v4, :cond_13

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p1

    if-nez p1, :cond_12

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_12
    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getMinHeight()I

    move-result p1

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I

    move-result v0

    :goto_2
    add-int/2addr p1, v0

    goto :goto_3

    :cond_13
    if-ge p1, v2, :cond_14

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I

    move-result v0

    goto :goto_2

    :cond_14
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I

    move-result p1

    add-int/2addr p1, v2

    :goto_3
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, v0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;II)V

    goto :goto_5

    :cond_15
    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v4

    if-nez v4, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v4, v0

    :cond_16
    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->f2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    move-object v0, v1

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I

    move-result v1

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, v0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->I2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;II)V

    :cond_18
    :goto_5
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
