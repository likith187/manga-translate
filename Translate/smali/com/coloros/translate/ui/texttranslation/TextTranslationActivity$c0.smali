.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->invoke$lambda$1$lambda$0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "resultTV"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollY(I)V

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->invoke(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->R1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/r;->Y(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TextTranslationActivity"

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "input is blank, cancel result"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    .line 5
    invoke-virtual {v0, p1}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "observe translation result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v2

    const-string v3, "resultTV"

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/translate/utils/c0$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "observe.mTranslationResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result v2

    const-string v5, "inputET"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Y1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_2
    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->g()V

    .line 12
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;I)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v4, v0

    :goto_0
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    move v6, v7

    .line 15
    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v6}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    if-nez v6, :cond_15

    .line 16
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v7}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 17
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    goto/16 :goto_5

    .line 18
    :cond_8
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v4

    :cond_9
    iget-object v8, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v8}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v8, v4

    :cond_a
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_b

    .line 19
    const-string p1, ""

    goto :goto_2

    .line 20
    :cond_b
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    :goto_2
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$c0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_c

    move v5, v7

    goto :goto_3

    :cond_c
    move v5, v6

    :goto_3
    invoke-static {p0, v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 23
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/ui/texttranslation/p0;->c0()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 24
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v4

    :cond_d
    invoke-virtual {v5}, Landroid/view/View;->clearFocus()V

    .line 25
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v4

    :cond_e
    new-instance v8, Lcom/coloros/translate/ui/texttranslation/k0;

    invoke-direct {v8, p0}, Lcom/coloros/translate/ui/texttranslation/k0;-><init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->i2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    move-result-object v5

    if-nez v5, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    move-object v4, v5

    :goto_4
    invoke-virtual {v4}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->g()V

    .line 27
    invoke-static {p0, v7}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 28
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_11

    .line 29
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object v3

    if-eqz v3, :cond_10

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Float;

    move-result-object v4

    const-string v5, "marginAlpha"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/vfxsdk/rsview/g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_10
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->B1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/oplus/vfxsdk/rsview/g;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/oplus/vfxsdk/rsview/g;->k()Lcom/oplus/vfxsdk/rsview/g;

    .line 31
    :cond_11
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->M1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x7ce

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v8, 0x1f4

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 32
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_13

    move v6, v7

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "observe mViewModel.streamTranslateDone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 34
    invoke-static {p0, v7}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->D2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 35
    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->H2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    .line 36
    :cond_14
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_5
    return-void
.end method
