.class public final Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/c$a;
    }
.end annotation


# static fields
.field public static final y:Lw1/c$a;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/view/ViewGroup$LayoutParams;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F

.field private r:F

.field private s:Landroid/content/res/Resources;

.field private t:Z

.field private u:I

.field private v:I

.field private final w:[I

.field private final x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw1/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw1/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lw1/c;->y:Lw1/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw1/c;->v:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lw1/c;->w:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lw1/c;->x:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lw1/c;->s:Landroid/content/res/Resources;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v1, Lcom/coloros/translate/R$dimen;->common_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/2addr p1, v0

    iput p1, p0, Lw1/c;->j:I

    iget-object p1, p0, Lw1/c;->s:Landroid/content/res/Resources;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v0, Lcom/coloros/translate/R$dimen;->dialog_item_layout_padding_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lw1/c;->m:I

    iget-object p1, p0, Lw1/c;->s:Landroid/content/res/Resources;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v0, Lcom/coloros/translate/R$dimen;->divider_width_change_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lw1/c;->p:I

    return-void
.end method

.method public static synthetic a(Lw1/c;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lw1/c;->e(Lw1/c;Landroid/view/View;IIII)V

    return-void
.end method

.method public static synthetic b(Lw1/c;)V
    .locals 0

    invoke-static {p0}, Lw1/c;->g(Lw1/c;)V

    return-void
.end method

.method private final c()V
    .locals 7

    const-string v0, "DividerChangeBehavior"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lw1/c;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "mLinearLayoutManager is null"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lw1/c;->b:Landroidx/recyclerview/widget/RecyclerView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "mRecyclerView"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    const/4 v4, 0x0

    if-lez v1, :cond_4

    iget-object v1, p0, Lw1/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw1/c;->d:Landroid/view/View;

    iget-object v1, p0, Lw1/c;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget v2, p0, Lw1/c;->v:I

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lw1/c;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    mul-int/2addr v2, v1

    iput v2, p0, Lw1/c;->u:I

    iput v1, p0, Lw1/c;->v:I

    :cond_4
    iget-object v1, p0, Lw1/c;->d:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Lw1/c;->x:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lw1/c;->x:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lw1/c;->u:I

    sub-int/2addr v1, v2

    iput v1, p0, Lw1/c;->e:I

    iget v2, p0, Lw1/c;->l:I

    if-ge v1, v2, :cond_5

    iget v1, p0, Lw1/c;->m:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lw1/c;->k:I

    if-le v1, v2, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    sub-int v1, v2, v1

    :goto_1
    iput v1, p0, Lw1/c;->f:I

    iput v1, p0, Lw1/c;->g:I

    iget v2, p0, Lw1/c;->q:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v5

    const-string v5, "mDivider"

    if-gtz v2, :cond_8

    :try_start_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lw1/c;->m:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lw1/c;->q:F

    iget-object v1, p0, Lw1/c;->a:Landroid/view/View;

    if-nez v1, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object v1, v3

    :cond_7
    iget v2, p0, Lw1/c;->q:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    iget v1, p0, Lw1/c;->e:I

    iget v2, p0, Lw1/c;->n:I

    if-ge v1, v2, :cond_9

    iget v4, p0, Lw1/c;->p:I

    goto :goto_2

    :cond_9
    iget v2, p0, Lw1/c;->o:I

    if-le v1, v2, :cond_a

    goto :goto_2

    :cond_a
    sub-int v4, v2, v1

    :goto_2
    iput v4, p0, Lw1/c;->f:I

    iput v4, p0, Lw1/c;->g:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lw1/c;->p:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lw1/c;->r:F

    iget-object v1, p0, Lw1/c;->i:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget v2, p0, Lw1/c;->h:I

    int-to-float v2, v2

    iget v4, p0, Lw1/c;->j:I

    int-to-float v4, v4

    iget v6, p0, Lw1/c;->r:F

    mul-float/2addr v4, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lw1/c;->a:Landroid/view/View;

    if-nez v1, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v3, v1

    :goto_3
    iget-object p0, p0, Lw1/c;->i:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListScroll failure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private static final e(Lw1/c;Landroid/view/View;IIII)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw1/c;->c()V

    return-void
.end method

.method private static final g(Lw1/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lw1/c;->c()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "appbarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lw1/c;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lw1/c;->f(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw1/c;->t:Z

    new-instance p1, Lw1/a;

    invoke-direct {p1, p0}, Lw1/a;-><init>(Lw1/c;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/material/appbar/AppBarLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string v0, "appbarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    iget-object v0, p0, Lw1/c;->w:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lw1/c;->w:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lw1/c;->k:I

    iput-object p2, p0, Lw1/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lw1/c;->d:Landroid/view/View;

    sget p2, Lcom/coloros/translate/R$id;->divider_line:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw1/c;->a:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "mDivider"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_1
    invoke-static {p2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lw1/c;->h:I

    iget-object p1, p0, Lw1/c;->a:Landroid/view/View;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lw1/c;->i:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p0, Lw1/c;->k:I

    iget p2, p0, Lw1/c;->m:I

    sub-int p2, p1, p2

    iput p2, p0, Lw1/c;->l:I

    iget-object p2, p0, Lw1/c;->s:Landroid/content/res/Resources;

    invoke-static {p2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    sget v1, Lcom/coloros/translate/R$dimen;->divider_width_start_count_offset:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lw1/c;->o:I

    iget p2, p0, Lw1/c;->p:I

    sub-int/2addr p1, p2

    iput p1, p0, Lw1/c;->n:I

    iget-object p1, p0, Lw1/c;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    const-string p1, "mRecyclerView"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p1

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_3

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_3
    iput-object v0, p0, Lw1/c;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Lw1/b;

    invoke-direct {p1, p0}, Lw1/b;-><init>(Lw1/c;)V

    const-wide/16 v0, 0x32

    invoke-static {v0, v1, p1}, Lcom/coloros/translate/utils/z0;->g(JLjava/lang/Runnable;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDividerInitParams failure : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DividerChangeBehavior"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
