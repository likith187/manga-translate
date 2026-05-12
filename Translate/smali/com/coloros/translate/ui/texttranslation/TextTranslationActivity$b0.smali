.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->invoke(Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->r2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "inputET"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x5dc

    invoke-static {p1, v3}, Lb9/d;->e(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lt p1, v3, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/texttranslation/p0;->n0(Z)V

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->R()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8
    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    .line 9
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    .line 10
    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$b0;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p0

    .line 11
    const-string v2, "event_asr_success_for_words"

    invoke-virtual {p1, v0, v2, v1, p0}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_5
    return-void
.end method
