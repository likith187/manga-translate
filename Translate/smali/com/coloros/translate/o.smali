.class public final Lcom/coloros/translate/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/o$a;,
        Lcom/coloros/translate/o$b;,
        Lcom/coloros/translate/o$c;
    }
.end annotation


# static fields
.field public static final r:Lcom/coloros/translate/o$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln8/j;

.field private c:Lcom/coloros/translate/b;

.field private d:Lcom/coloros/translate/b;

.field private e:Z

.field private f:Lcom/coloros/translate/q;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/Boolean;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/coloros/translate/widget/LanguageChooseView;

.field private m:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private n:Ljava/lang/Integer;

.field private final o:Ln8/j;

.field private final p:Ln8/j;

.field private q:Lcom/coloros/translate/o$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/o;->r:Lcom/coloros/translate/o$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget-object p1, Lcom/coloros/translate/o$g;->INSTANCE:Lcom/coloros/translate/o$g;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/o;->b:Ln8/j;

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    sget-object p1, Lcom/coloros/translate/q;->PHOTO_TRANSLATE:Lcom/coloros/translate/q;

    iput-object p1, p0, Lcom/coloros/translate/o;->f:Lcom/coloros/translate/q;

    new-instance p1, Lcom/coloros/translate/o$h;

    invoke-direct {p1, p0}, Lcom/coloros/translate/o$h;-><init>(Lcom/coloros/translate/o;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/o;->o:Ln8/j;

    new-instance p1, Lcom/coloros/translate/o$i;

    invoke-direct {p1, p0}, Lcom/coloros/translate/o$i;-><init>(Lcom/coloros/translate/o;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/o;->p:Ln8/j;

    return-void
.end method

.method private static final A(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/o;->e:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/o;->j:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final B(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    iget-object v1, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on selected from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", to = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranslateEngine.LanguagePicker"

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coloros/translate/o;->j:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    if-eq v0, v1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coloros/translate/o;->j:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coloros/translate/o;->j:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/coloros/translate/LanguageManager;->M(Lcom/coloros/translate/b;)V

    iget-object v0, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/LanguageManager;->S(Lcom/coloros/translate/b;)V

    iput-boolean v2, p0, Lcom/coloros/translate/o;->e:Z

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_3
    iget-boolean p1, p0, Lcom/coloros/translate/o;->e:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/o;->j:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/LanguageManager;->D(Ljava/lang/Boolean;)V

    :cond_4
    return v2
.end method

.method private final D()V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->F()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, p0, Lcom/coloros/translate/o;->q:Lcom/coloros/translate/o$c;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/coloros/translate/o$c;->a(Z)V

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/o;->g:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-object v0, p0, Lcom/coloros/translate/o;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic H(Lcom/coloros/translate/o;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/o;->G(Z)V

    return-void
.end method

.method private static final I(Lcom/coloros/translate/o;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/o;->D()V

    return-void
.end method

.method private static final J(Lcom/coloros/translate/o;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_color_background_elevatedWithCard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/support/panel/R$id;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_background_elevatedWithCard:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private final K()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/o;->m:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/o;->w()Lcom/coloros/translate/o$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/o;->k:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/R$string;->source_language:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/widget/LanguageChooseView;->h()V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/o;->w()Lcom/coloros/translate/o$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/LanguageManager;->n()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->l(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/o;->w()Lcom/coloros/translate/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->n(Lcom/coloros/translate/b;)V

    iget-object v0, p0, Lcom/coloros/translate/o;->m:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/o;->w()Lcom/coloros/translate/o$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :goto_2
    return-void
.end method

.method private final L()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/o;->m:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/widget/LanguageChooseView;->o()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/o;->k:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/R$string;->target_language:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-virtual {v1, v2}, Lcom/coloros/translate/LanguageManager;->p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->l(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->n(Lcom/coloros/translate/b;)V

    iget-object v0, p0, Lcom/coloros/translate/o;->m:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :goto_2
    return-void
.end method

.method private final N(Lcom/coloros/translate/b;)V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->B()Z

    move-result v0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v0, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v0, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setFromLanguage(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final O(Lcom/coloros/translate/b;)V
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->B()Z

    move-result v0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/coloros/translate/b;->CHINESE:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v0, Lcom/coloros/translate/R$string;->chinese:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/coloros/translate/b;->SPANISH:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v0, Lcom/coloros/translate/R$string;->spanish_os15:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/translate/b;->getFullNameResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/coloros/translate/widget/LanguageChooseView;->setToLanguage(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final P()V
    .locals 6

    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/o;->u()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    invoke-virtual {v2}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/b;

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/coloros/translate/b;

    iget-object v5, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-virtual {v5}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/coloros/translate/b;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lcom/coloros/translate/b;

    if-nez v3, :cond_4

    return-void

    :cond_4
    iput-object v3, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    invoke-virtual {v2, v3}, Lcom/coloros/translate/o$b;->n(Lcom/coloros/translate/b;)V

    iget-object v2, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    invoke-direct {p0, v2}, Lcom/coloros/translate/o;->O(Lcom/coloros/translate/b;)V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/o$b;->l(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/o;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/o;->I(Lcom/coloros/translate/o;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/o;->B(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/coloros/translate/o;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/o;->J(Lcom/coloros/translate/o;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/o;->A(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lcom/coloros/translate/o;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/o;)Lcom/coloros/translate/b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/o;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->u()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/o;)Lcom/coloros/translate/LanguageManager;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->w()Lcom/coloros/translate/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/o;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->m:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/o;)Lcom/coloros/translate/o$b;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->x()Lcom/coloros/translate/o$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    return-void
.end method

.method public static final synthetic n(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->K()V

    return-void
.end method

.method public static final synthetic p(Lcom/coloros/translate/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->L()V

    return-void
.end method

.method public static final synthetic q(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/o;->N(Lcom/coloros/translate/b;)V

    return-void
.end method

.method public static final synthetic r(Lcom/coloros/translate/o;Lcom/coloros/translate/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/o;->O(Lcom/coloros/translate/b;)V

    return-void
.end method

.method public static final synthetic s(Lcom/coloros/translate/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/o;->P()V

    return-void
.end method

.method private final u()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/LanguageManager;->p(Lcom/coloros/translate/b;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final v()Lcom/coloros/translate/LanguageManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method private final w()Lcom/coloros/translate/o$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->o:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/o$b;

    return-object p0
.end method

.method private final x()Lcom/coloros/translate/o$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->p:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/o$b;

    return-object p0
.end method

.method private final y(Landroid/view/View;Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/coloros/translate/o;->z(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/coloros/translate/R$id;->tv_language_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/coloros/translate/o;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lcom/coloros/translate/R$id;->chooseLanguage:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/widget/LanguageChooseView;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_2

    sget v0, Lcom/coloros/translate/R$id;->recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    :cond_2
    iput-object v0, p0, Lcom/coloros/translate/o;->m:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-direct {p0, p1}, Lcom/coloros/translate/o;->N(Lcom/coloros/translate/b;)V

    iget-object p1, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    invoke-direct {p0, p1}, Lcom/coloros/translate/o;->O(Lcom/coloros/translate/b;)V

    iget-object p1, p0, Lcom/coloros/translate/o;->n:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/coloros/translate/widget/LanguageChooseView;->setLanguageChangeIcon(I)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/o;->K()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/coloros/translate/o;->L()V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/coloros/translate/o$d;

    invoke-direct {p2, p0}, Lcom/coloros/translate/o$d;-><init>(Lcom/coloros/translate/o;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/coloros/translate/o$e;

    invoke-direct {p2, p0}, Lcom/coloros/translate/o$e;-><init>(Lcom/coloros/translate/o;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p1, :cond_8

    new-instance p2, Lcom/coloros/translate/o$f;

    invoke-direct {p2, p0}, Lcom/coloros/translate/o$f;-><init>(Lcom/coloros/translate/o;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    :cond_8
    return-void
.end method

.method private final z(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/coloros/translate/R$id;->picker_toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    :goto_1
    if-eqz p1, :cond_2

    sget v0, Lcom/coloros/translate/R$string;->language_select:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->black_alpha_90:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextColor(I)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/R$color;->task_panel_sub_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitleTextColor(I)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v1, Lcom/coloros/translate/R$id;->menu_cancel:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/coloros/translate/m;

    invoke-direct {v1, p0}, Lcom/coloros/translate/m;-><init>(Lcom/coloros/translate/o;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_6

    sget v0, Lcom/coloros/translate/R$id;->menu_confirm:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/coloros/translate/n;

    invoke-direct {v0, p0}, Lcom/coloros/translate/n;-><init>(Lcom/coloros/translate/o;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method


# virtual methods
.method public final C(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final E(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/o;->n:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/coloros/translate/o;->l:Lcom/coloros/translate/widget/LanguageChooseView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/widget/LanguageChooseView;->setLanguageChangeIcon(I)V

    :cond_0
    return-void
.end method

.method public final F(Lcom/coloros/translate/o$c;)V
    .locals 1

    const-string v0, "dismissListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/o;->q:Lcom/coloros/translate/o$c;

    return-void
.end method

.method public final G(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->m()Lcom/coloros/translate/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/o;->c:Lcom/coloros/translate/b;

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/LanguageManager;->o()Lcom/coloros/translate/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/o;->d:Lcom/coloros/translate/b;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    sget v2, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/coloros/translate/R$layout;->translate_popup_language_picker:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/o;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/o;->i:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/o;->y(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/coloros/translate/k;

    invoke-direct {v0, p0}, Lcom/coloros/translate/k;-><init>(Lcom/coloros/translate/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/o;->i:Landroid/view/View;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/coloros/translate/l;

    invoke-direct {v0, p0}, Lcom/coloros/translate/l;-><init>(Lcom/coloros/translate/o;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/o;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/o;->C(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/LanguageManager;->N()V

    iget-object p0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_6
    return-void
.end method

.method public final M()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coloros/translate/o;->j:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/coloros/translate/o;->v()Lcom/coloros/translate/LanguageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/LanguageManager;->U()V

    return-void
.end method

.method public final t()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/o;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method
