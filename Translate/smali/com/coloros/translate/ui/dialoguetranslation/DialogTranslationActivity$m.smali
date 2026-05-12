.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->R2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->invoke(Ljava/lang/Integer;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    .line 4
    const-string v0, "getMenu(...)"

    const-string v1, "mNavigationTool"

    const-string v2, "mDialogueTranslationAdapter"

    const-string v3, "mToolbar"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_1
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v6, Lcom/coloros/translate/R$string;->select_project:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq p1, v2, :cond_4

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v3, Lcom/coloros/translate/R$string;->select_cancel_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v4, :cond_4

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v3, Lcom/coloros/translate/R$string;->select_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 9
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v5, p0

    :goto_1
    invoke-virtual {v5}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object p0

    .line 10
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 12
    :cond_6
    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v6}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v6, v5

    :cond_7
    invoke-virtual {v6}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne p1, v6, :cond_d

    .line 13
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v5

    :cond_8
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v6, Lcom/coloros/translate/R$string;->completely_select_all:I

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v5

    :cond_9
    invoke-virtual {v3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_b

    .line 15
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v3, Lcom/coloros/translate/R$string;->select_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v4, :cond_b

    .line 16
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v3, Lcom/coloros/translate/R$string;->select_cancel_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 17
    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p0

    if-nez p0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v5, p0

    :goto_4
    invoke-virtual {v5}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object p0

    .line 18
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 19
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 20
    :cond_d
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 21
    sget v2, Lcom/coloros/translate/R$plurals;->completely_select_multiple:I

    .line 22
    iget-object v6, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v6}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 23
    iget-object v7, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v7}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 24
    invoke-virtual {p1, v2, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getQuantityString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v5

    :cond_e
    invoke-virtual {v2, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_6

    :cond_f
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    sget v3, Lcom/coloros/translate/R$string;->select_all:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 27
    :goto_6
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$m;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p0

    if-nez p0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    move-object v5, p0

    :goto_7
    invoke-virtual {v5}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object p0

    .line 28
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 29
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_11
    :goto_9
    return-void
.end method
