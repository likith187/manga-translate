.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;
.super Lcom/coloros/translate/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field final synthetic c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {p0}, Lcom/coloros/translate/widget/q;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "editable"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "afterTextChanged inputET changed"

    const-string v4, "TextTranslationActivity"

    invoke-virtual {v1, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->A2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "afterTextChanged reset lastNormalResult"

    invoke-virtual {v1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/coloros/translate/ui/texttranslation/p0;->v0(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x2

    const-string v7, "substring(...)"

    const/16 v8, 0x5dc

    const-string v9, "inputET"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-le v2, v8, :cond_7

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "inputET length is : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$string;->tip_max_length:I

    invoke-static {v2, v10, v6, v11}, Lcom/coloros/translate/utils/b1;->c(IIILjava/lang/Object;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5dd

    const/16 v6, 0x5db

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/simultaneous/utils/a;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "afterTextChanged end with emoji"

    invoke-virtual {v1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->b:I

    if-ne v1, v8, :cond_1

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->b:I

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_3
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_4
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v11, v2

    :goto_1
    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/coloros/translate/ui/texttranslation/p0;->t0(Z)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v0, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->b:I

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->M()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/coloros/translate/ui/texttranslation/p0;->t0(Z)V

    :cond_8
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->S1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object v2

    iget-object v8, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v8}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "afterTextChanged reset usingAITranslate"

    invoke-virtual {v1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_9
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v8, "waitingInputLAV"

    if-lez v2, :cond_10

    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v11

    :cond_a
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "afterTextChanged stop waitingInputLAV"

    invoke-virtual {v1, v4, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_b
    invoke-static {v1}, Lcom/coloros/translate/utils/w;->e(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_c
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v1, v2, v10, v6, v11}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->a:Ljava/lang/String;

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->z2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_e
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_f
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1, v10, v5, v11}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->X2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;ZILjava/lang/Object;)V

    iget-object v0, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->q1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    return-void

    :cond_10
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v11

    :cond_11
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->o2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_12
    move-object v11, v2

    :goto_2
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_3

    :cond_13
    iget-object v2, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v3, Lcom/coloros/translate/R$string;->text_translation_input_hint_new:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    move v5, v10

    :goto_4
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->U1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v1

    if-eq v5, v1, :cond_15

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1, v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->N2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    iget-object v0, v0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    :cond_15
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coloros/translate/widget/q;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p2, "TextTranslationActivity"

    const-string p3, "beforeTextChanged inputET changed"

    invoke-virtual {p1, p2, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->c:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "inputET"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$s;->a:Ljava/lang/String;

    return-void
.end method
