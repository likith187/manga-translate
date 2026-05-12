.class final Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;
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

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->invoke$lambda$6(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->invoke$lambda$5(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->invoke$lambda$4(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->invoke$lambda$9(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    return-void
.end method

.method private static final invoke$lambda$4(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object v0

    const-string v1, "mDialogueTranslationAdapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    sget v0, Lcom/coloros/translate/R$string;->select_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_2
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    const-string v0, "mToolbar"

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    sget v4, Lcom/coloros/translate/R$string;->select_project:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/translate/repository/local/Conversation;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v3

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_6
    sget v0, Lcom/coloros/translate/R$string;->completely_select_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    sget v0, Lcom/coloros/translate/R$string;->select_cancel_all:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_1
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "mNavigationTool"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v2

    :cond_8
    invoke-virtual {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v0, "getMenu(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_9
    :goto_3
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p0

    if-nez p0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v2, p0

    :goto_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return v3
.end method

.method private static final invoke$lambda$5(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->V()Landroidx/lifecycle/a0;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final invoke$lambda$6(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lw1/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mDividerChangeBehavior"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "mAppbarLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "mRecyclerHistoryRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lw1/c;->f(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final invoke$lambda$9(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->F1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lw1/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mDividerChangeBehavior"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "mAppbarLayout"

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "mRecyclerHistoryRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lw1/c;->f(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 14

    .line 2
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSelectMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DialogTranslationActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    const-string v2, "aiSignTextView"

    const-string v3, "mChooseLanguageView"

    const-string v4, "mRecordingTips"

    const-string v5, "mRecordingButtonContainer"

    const-string v6, "mDialogueTranslationAdapter"

    const/4 v7, 0x1

    const-string v8, "mNavigationBarView"

    const-string v9, "mNavigationTool"

    const/16 v10, 0x8

    const-string v11, "mRecyclerHistoryRecyclerView"

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz p1, :cond_1b

    .line 4
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_0
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_1
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_2
    invoke-virtual {p1, v10}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_3
    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_4
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_5
    invoke-virtual {p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const-string v2, "getMenu(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 11
    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 12
    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v3, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_8

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_1

    :cond_8
    move-object p1, v13

    :goto_1
    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    .line 13
    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)I

    move-result v4

    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    invoke-static {v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_9
    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    :cond_a
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln8/q;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v7, :cond_c

    .line 16
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->Q0()V

    .line 17
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object p1

    new-instance v3, Ln8/q;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v4}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->O()Landroidx/lifecycle/a0;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln8/q;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_b
    const-wide/16 v4, -0x1

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    .line 18
    :cond_c
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->s2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    .line 19
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v3

    const-string v4, "mToolbar"

    if-nez v3, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v13

    :cond_d
    invoke-virtual {v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    sget v5, Lcom/coloros/translate/R$id;->cancel_select:I

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->o2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)V

    .line 20
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->W1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v3, v13

    :cond_e
    invoke-virtual {v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    sget v4, Lcom/coloros/translate/R$id;->select_all:I

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->p2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/view/MenuItem;)V

    .line 21
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/a0;

    invoke-direct {v4, v3}, Lcom/coloros/translate/ui/dialoguetranslation/a0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 22
    :cond_f
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->X1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/b0;

    invoke-direct {v4, v3}, Lcom/coloros/translate/ui/dialoguetranslation/b0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 23
    :cond_10
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->Y1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_11
    move-object p1, v13

    :goto_3
    if-eqz p1, :cond_12

    .line 24
    sget-object v3, Lcom/coloros/translate/utils/i1;->a:Lcom/coloros/translate/utils/i1$a;

    iget-object v4, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-virtual {v3, v4, v5}, Lcom/coloros/translate/utils/i1$a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 25
    invoke-virtual {p1, v12, v12, v3, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 26
    :cond_12
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p1

    if-nez p1, :cond_13

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_13
    invoke-virtual {p1, v7}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->v(Z)V

    .line 27
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p1

    if-nez p1, :cond_14

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    .line 28
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p1

    if-nez p1, :cond_15

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_15
    iget-object v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    new-instance v4, Lcom/coloros/translate/ui/dialoguetranslation/c0;

    invoke-direct {v4, v3}, Lcom/coloros/translate/ui/dialoguetranslation/c0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p1

    if-nez p1, :cond_16

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v13

    :cond_17
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 31
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v0, v13

    :cond_18
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_1a

    .line 33
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p1

    if-nez p1, :cond_19

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    move-object v13, p1

    :goto_4
    invoke-virtual {v13}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object p1

    .line 34
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 35
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 36
    :cond_1a
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 37
    :cond_1b
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->z1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/widget/LanguageChooseView;

    move-result-object p1

    if-nez p1, :cond_1c

    invoke-static {v3}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_1c
    invoke-virtual {p1, v12}, Lcom/coloros/translate/widget/LanguageChooseView;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v7, :cond_1e

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->F()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 39
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->w1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_1d
    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_1e
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1f

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_1f
    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->T1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_20

    invoke-static {v4}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_20
    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->K1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    move-result-object p1

    if-nez p1, :cond_21

    invoke-static {v9}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_21
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_22

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_23

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_6

    :cond_23
    move-object p1, v13

    :goto_6
    if-eqz p1, :cond_26

    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    .line 44
    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->J1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)I

    move-result v3

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 45
    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_24

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_24
    invoke-virtual {p1, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    invoke-static {v2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->I1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_25

    invoke-static {v8}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_25
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 47
    :cond_26
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->c2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    .line 48
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p1

    if-nez p1, :cond_27

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_27
    invoke-virtual {p1, v12}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->v(Z)V

    .line 49
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->a2(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 50
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->E1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Lcom/coloros/translate/ui/dialoguetranslation/h0;

    move-result-object p1

    if-nez p1, :cond_28

    invoke-static {v6}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    .line 51
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p1

    if-nez p1, :cond_29

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_29
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    new-instance v3, Lcom/coloros/translate/ui/dialoguetranslation/d0;

    invoke-direct {v3, v2}, Lcom/coloros/translate/ui/dialoguetranslation/d0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p1

    if-nez p1, :cond_2a

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v13

    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v1}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->P1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2b

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v13

    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 54
    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity$n;->this$0:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->U1(Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)Landroidx/recyclerview/widget/COUIRecyclerView;

    move-result-object p0

    if-nez p0, :cond_2c

    invoke-static {v11}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_7

    :cond_2c
    move-object v13, p0

    :goto_7
    invoke-virtual {v13, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    return-void
.end method
