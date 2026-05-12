.class public final Lcom/coloros/translate/screen/translate/engine/picker/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/engine/picker/e$a;,
        Lcom/coloros/translate/screen/translate/engine/picker/e$b;,
        Lcom/coloros/translate/screen/translate/engine/picker/e$c;
    }
.end annotation


# static fields
.field public static final p:Lcom/coloros/translate/screen/translate/engine/picker/e$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln8/j;

.field private c:Lcom/coloros/translate/screen/translate/engine/language/a;

.field private d:Lcom/coloros/translate/screen/translate/engine/language/a;

.field private e:Z

.field private f:Ll2/b;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

.field private l:Landroidx/recyclerview/widget/COUIRecyclerView;

.field private final m:Ln8/j;

.field private final n:Ln8/j;

.field private o:Lcom/coloros/translate/screen/translate/engine/picker/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/picker/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/picker/e;->p:Lcom/coloros/translate/screen/translate/engine/picker/e$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget-object p1, Lcom/coloros/translate/screen/translate/engine/picker/e$g;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/picker/e$g;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->b:Ln8/j;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    sget-object p1, Ll2/b;->SCREEN_TRANSLATE:Ll2/b;

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->f:Ll2/b;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/picker/e$h;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/picker/e$h;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->m:Ln8/j;

    new-instance p1, Lcom/coloros/translate/screen/translate/engine/picker/e$i;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/translate/engine/picker/e$i;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->n:Ln8/j;

    return-void
.end method

.method private static final A(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

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

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->M(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {p1, v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->Q(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    iput-boolean v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->e:Z

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_2
    iget-boolean p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->e:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->F()V

    :cond_3
    return v2
.end method

.method private final C()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->j:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/screen/R$string;->language_source:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->f()V

    :cond_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->l(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->j()V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->j:Landroid/widget/TextView;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/screen/R$string;->language_target:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v1, v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->o(Lcom/coloros/translate/screen/translate/engine/language/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->l(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :goto_3
    return-void
.end method

.method private final D()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslateEngine.LanguagePicker"

    const-string v2, "onPickerDismiss"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->o:Lcom/coloros/translate/screen/translate/engine/picker/e$c;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/coloros/translate/screen/translate/engine/picker/e$c;->a(Z)V

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->g:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private static final I(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->D()V

    return-void
.end method

.method private static final J(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

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
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_color_background_elevatedWithCard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

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

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->j:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/screen/R$string;->language_source:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->f()V

    :cond_3
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/j;->m()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->l(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :goto_2
    return-void
.end method

.method private final L()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->j()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->j:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v2, Lcom/coloros/translate/screen/R$string;->language_target:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v1, v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->o(Lcom/coloros/translate/screen/translate/engine/language/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->l(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :goto_2
    return-void
.end method

.method private final N()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v1}, Lcom/coloros/translate/screen/translate/engine/language/a;->getFullNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v3}, Lcom/coloros/translate/screen/translate/engine/language/a;->getFullNameResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v2}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/screen/translate/engine/language/j;->j(Lcom/coloros/translate/screen/translate/engine/language/a;Lcom/coloros/translate/screen/translate/engine/language/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz p0, :cond_2

    sget v0, Lcom/coloros/translate/screen/R$drawable;->screen_right_single_arrow:I

    invoke-virtual {p0, v0}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->setLanguageChangeIcon(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz p0, :cond_2

    sget v0, Lcom/coloros/translate/screen/R$drawable;->switch_launguage_single_arrow:I

    invoke-virtual {p0, v0}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->setLanguageChangeIcon(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final O()V
    .locals 5

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->t()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v4}, Lcom/coloros/translate/screen/translate/engine/language/a;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/o;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/screen/translate/engine/language/a;

    iput-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    :goto_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v2, v3}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->n(Lcom/coloros/translate/screen/translate/engine/language/a;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->N()V

    invoke-virtual {v0, v1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b;->l(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->I(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->J(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->z(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->A(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/translate/engine/picker/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/screen/translate/engine/picker/e;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->t()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/language/j;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/picker/e$b;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/screen/translate/engine/picker/e;)Landroidx/recyclerview/widget/COUIRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/screen/translate/engine/picker/e;)Lcom/coloros/translate/screen/translate/engine/picker/e$b;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/coloros/translate/screen/translate/engine/picker/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-void
.end method

.method public static final synthetic n(Lcom/coloros/translate/screen/translate/engine/picker/e;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->K()V

    return-void
.end method

.method public static final synthetic p(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->L()V

    return-void
.end method

.method public static final synthetic q(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->N()V

    return-void
.end method

.method public static final synthetic r(Lcom/coloros/translate/screen/translate/engine/picker/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->O()V

    return-void
.end method

.method private final t()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/screen/translate/engine/language/j;->o(Lcom/coloros/translate/screen/translate/engine/language/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final u()Lcom/coloros/translate/screen/translate/engine/language/j;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/translate/engine/language/j;

    return-object p0
.end method

.method private final v()Lcom/coloros/translate/screen/translate/engine/picker/e$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->m:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    return-object p0
.end method

.method private final w()Lcom/coloros/translate/screen/translate/engine/picker/e$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->n:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    return-object p0
.end method

.method private final x(Landroid/view/View;Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->y(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/coloros/translate/screen/R$id;->tv_language_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lcom/coloros/translate/screen/R$id;->chooseLanguage:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/screen/widget/LanguageChooseView;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz p1, :cond_2

    sget v0, Lcom/coloros/translate/screen/R$id;->recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView;

    :cond_2
    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->l:Landroidx/recyclerview/widget/COUIRecyclerView;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Landroidx/recyclerview/widget/COUILinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    :goto_2
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->N()V

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->K()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->L()V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/coloros/translate/screen/translate/engine/picker/e$d;

    invoke-direct {p2, p0}, Lcom/coloros/translate/screen/translate/engine/picker/e$d;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->setOnFromLangeClickListener(Lw8/l;)V

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/coloros/translate/screen/translate/engine/picker/e$e;

    invoke-direct {p2, p0}, Lcom/coloros/translate/screen/translate/engine/picker/e$e;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->setOnToLangeClickListener(Lw8/l;)V

    :cond_6
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->k:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/coloros/translate/screen/translate/engine/picker/e$f;

    invoke-direct {p2, p0}, Lcom/coloros/translate/screen/translate/engine/picker/e$f;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-virtual {p1, p2}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->setOnSwitchClickListener(Lw8/l;)V

    :cond_7
    return-void
.end method

.method private final y(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Lcom/coloros/translate/screen/R$id;->picker_toolbar:I

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

    sget v0, Lcom/coloros/translate/screen/R$string;->language_select:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/screen/R$color;->black_alpha90:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextColor(I)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v1, Lcom/coloros/translate/screen/R$color;->task_panel_sub_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitleTextColor(I)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v1, Lcom/coloros/translate/screen/R$id;->menu_cancel:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/coloros/translate/screen/translate/engine/picker/c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/translate/engine/picker/c;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    if-eqz p1, :cond_6

    sget v0, Lcom/coloros/translate/screen/R$id;->menu_confirm:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/picker/d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/translate/engine/picker/d;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method

.method private static final z(Lcom/coloros/translate/screen/translate/engine/picker/e;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->e:Z

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public final F(Lcom/coloros/translate/screen/translate/engine/picker/e$c;)V
    .locals 1

    const-string v0, "dismissListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->o:Lcom/coloros/translate/screen/translate/engine/picker/e$c;

    return-void
.end method

.method public final G(Ll2/b;)V
    .locals 1

    const-string v0, "translateEngineType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->f:Ll2/b;

    return-void
.end method

.method public final H(ZZ)V
    .locals 4

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    new-instance v1, Landroidx/appcompat/view/d;

    iget-object v2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->a:Landroid/content/Context;

    sget v3, Lcom/coloros/translate/screen/R$style;->AppTheme:I

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/coloros/translate/screen/R$style;->ThemeCOUIBottomSheetDialog:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$style;->ThemeCOUIBottomSheetDialog:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x7f6

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "screen_language_picker"

    invoke-virtual {v1, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/coloros/translate/screen/R$layout;->layout_translate_screen_language_picker:I

    invoke-virtual {p2, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->i:Landroid/view/View;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    :cond_7
    iget-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->i:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e;->x(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_8

    new-instance p2, Lcom/coloros/translate/screen/translate/engine/picker/a;

    invoke-direct {p2, p0}, Lcom/coloros/translate/screen/translate/engine/picker/a;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_8
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->i:Landroid/view/View;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/coloros/translate/screen/translate/engine/picker/b;

    invoke-direct {p2, p0}, Lcom/coloros/translate/screen/translate/engine/picker/b;-><init>(Lcom/coloros/translate/screen/translate/engine/picker/e;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_a
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslateEngine.LanguagePicker"

    const-string p2, "show()"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final M()V
    .locals 3

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->l()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->u()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/engine/language/j;->n()Lcom/coloros/translate/screen/translate/engine/language/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->d:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->N()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/picker/e;->C()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TranslateEngine.LanguagePicker"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslateEngine.LanguagePicker"

    const-string v2, "dismiss()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/e;->h:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    :cond_0
    return-void
.end method
