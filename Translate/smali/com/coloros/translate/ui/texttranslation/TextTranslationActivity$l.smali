.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n3()V
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->invoke(I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "get(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coloros/translate/repository/local/TextHistory;

    .line 5
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/TextHistory;->getOriLanguageCode()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/TextHistory;->getResultLanguageCode()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    :cond_1
    sget-object v4, Lcom/coloros/translate/LanguageManager;->w:Lcom/coloros/translate/LanguageManager$d;

    invoke-virtual {v4}, Lcom/coloros/translate/LanguageManager$d;->b()Lcom/coloros/translate/LanguageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/coloros/translate/LanguageManager;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, "inputET"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_3
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/TextHistory;->getOriContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v4

    :cond_4
    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v5, v4

    :cond_5
    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 11
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object v1

    iget-object v5, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v5}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField1()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ai"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->b0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    const-string p1, "onItemClick and use AI translate"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->y1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "aiContent"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v4

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 15
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->f0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 17
    const-string p1, "onItemClick while asr but nothing identify"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$l;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->T1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/EditText;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v4, p0

    :goto_0
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/texttranslation/p0;->x0(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method
