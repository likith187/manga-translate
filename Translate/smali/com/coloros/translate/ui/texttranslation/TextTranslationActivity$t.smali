.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;
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
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {p0}, Lcom/coloros/translate/widget/q;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const-string v0, "editable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->f(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    sget-object p1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {p1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result p1

    const-string v0, "1"

    if-eqz p1, :cond_6

    move-object p1, v0

    goto :goto_4

    :cond_6
    const-string p1, "0"

    :goto_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "network"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "search_words"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->c2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "language_from"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->g2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "language_to"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->C1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "event_translate_success_for_words"

    invoke-virtual {p1, p0, v0, v1}, Lcom/coloros/translate/utils/f1$a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    :cond_7
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TextTranslationActivity"

    const-string v2, "resultTV afterTextChanged updateResultFrameStatus true"

    invoke-virtual {p1, v0, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->O2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$t;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->n1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V

    :goto_5
    return-void
.end method
