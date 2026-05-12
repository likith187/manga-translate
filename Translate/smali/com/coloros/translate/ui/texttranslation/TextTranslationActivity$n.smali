.class final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

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

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->invoke(I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coloros/translate/ui/texttranslation/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->a0()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 3
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemEditClick selected size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextTranslationActivity"

    invoke-virtual {v0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;I)V

    .line 5
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v4, "deleteLayout"

    const-string v5, "menuSelect"

    const-string v6, "toolbarHistory"

    const/4 v7, 0x0

    if-ne p1, v2, :cond_4

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v7

    :cond_1
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/coloros/translate/R$string;->completely_select_all:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v7

    :cond_2
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v5, Lcom/coloros/translate/R$string;->select_cancel_all:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v7, p1

    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_4
    const/4 v2, 0x0

    if-nez p1, :cond_8

    .line 10
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 11
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v7

    :cond_5
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v6, Lcom/coloros/translate/R$string;->mark_selected_no_items:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v7

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v5, Lcom/coloros/translate/R$string;->select_all:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 13
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v7, p1

    :goto_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 14
    :cond_8
    iget-object v8, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v8, v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->F2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Z)V

    .line 15
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->m2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v7

    .line 16
    :cond_9
    iget-object v6, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/coloros/translate/R$plurals;->mark_selected_item:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, p1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->a2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v7

    :cond_a
    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    sget v5, Lcom/coloros/translate/R$string;->select_all:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 19
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->G1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v7, p1

    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 20
    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->k2(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemEditClick selectedAll : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    return-void
.end method
