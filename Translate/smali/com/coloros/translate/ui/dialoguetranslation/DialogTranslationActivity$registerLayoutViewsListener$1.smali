.class public final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$c;
.implements Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/coloros/translate/R$id;->navigation_copy:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "<get-keys>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= mViewModel.mConversionList.value?.size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogTranslationActivity"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/repository/local/Conversation;

    const-string v5, "\n"

    if-eqz v3, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/Conversation;->getFromText()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    if-nez v3, :cond_3

    move-object v3, v6

    :cond_3
    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/Conversation;->getToText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->C1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v4

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->D1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getSortIndex()I

    move-result v5

    const-string v6, "event_copy_for_dialog"

    invoke-virtual {v3, v2, v6, v4, v5}, Lcom/coloros/translate/utils/f1$a;->c(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {v0}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/coloros/translate/R$string;->copy_text:I

    invoke-virtual {v0, p0, p1, v2}, Lcom/coloros/translate/widget/k;->d(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    sget v0, Lcom/coloros/translate/R$id;->navigation_delete:I

    if-ne p1, v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->B1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x258

    cmp-long p1, v4, v6

    if-gez p1, :cond_7

    return v1

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1, v2, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->l2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;J)V

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$registerLayoutViewsListener$1;->a:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->u1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    :cond_8
    :goto_3
    return v1
.end method
