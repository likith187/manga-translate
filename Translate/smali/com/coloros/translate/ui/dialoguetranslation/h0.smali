.class public final Lcom/coloros/translate/ui/dialoguetranslation/h0;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/dialoguetranslation/h0$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/coloros/translate/ui/dialoguetranslation/h0$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field public g:Lcom/coloros/translate/ui/dialoguetranslation/i0;

.field private h:I

.field private i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/dialoguetranslation/h0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k:Lcom/coloros/translate/ui/dialoguetranslation/h0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->a:Landroid/content/Context;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    iget-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$dimen;->dialog_item_layout_padding_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->j:I

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/ui/dialoguetranslation/i;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->o(Lcom/coloros/translate/ui/dialoguetranslation/i;Z)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/ui/dialoguetranslation/h0;ILcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->n(Lcom/coloros/translate/ui/dialoguetranslation/h0;ILcom/coui/appcompat/checkbox/COUICheckBox;I)V

    return-void
.end method

.method private static final n(Lcom/coloros/translate/ui/dialoguetranslation/h0;ILcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->J()Landroidx/lifecycle/a0;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    return-void
.end method

.method private static final o(Lcom/coloros/translate/ui/dialoguetranslation/i;Z)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;->l()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/local/Conversation;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/local/Conversation;->isLeft()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemInserted(I)V

    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    return-object p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->d:Z

    return p0
.end method

.method public final k()Lcom/coloros/translate/ui/dialoguetranslation/i0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->g:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mViewModelTemp"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->e:Z

    return p0
.end method

.method public m(Lcom/coloros/translate/ui/dialoguetranslation/i;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/utils/o0;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->j:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->i:I

    add-int/lit8 v2, v0, -0x6

    if-lt p2, v2, :cond_1

    iget v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->h:I

    if-eq v2, v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_1

    iput v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->h:I

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->n0()V

    :cond_1
    iget-object v2, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/repository/local/Conversation;

    iget v3, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->f:I

    invoke-virtual {p1, v2, v3, v0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/i;->s(Lcom/coloros/translate/repository/local/Conversation;III)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->p()Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->c:Z

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->l()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->m()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v4, 0x800003

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->m()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->l()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->getItemViewType(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->m()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v4, 0x800005

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->m()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->m()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->l()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    new-instance v2, Lcom/coloros/translate/ui/dialoguetranslation/f0;

    invoke-direct {v2, p0, p2}, Lcom/coloros/translate/ui/dialoguetranslation/f0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/h0;I)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0;->g0()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->l()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p0

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/g0;

    invoke-direct {p2, p1, v1}, Lcom/coloros/translate/ui/dialoguetranslation/g0;-><init>(Lcom/coloros/translate/ui/dialoguetranslation/i;Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->m(Lcom/coloros/translate/ui/dialoguetranslation/i;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->p(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/dialoguetranslation/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->q(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/dialoguetranslation/i;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->r(Lcom/coloros/translate/ui/dialoguetranslation/i;)V

    return-void
.end method

.method public p(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/dialoguetranslation/i;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget p2, Lcom/coloros/translate/R$layout;->dialogue_item_layout_left:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/coloros/translate/R$layout;->dialogue_item_layout_right:I

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/coloros/translate/ui/dialoguetranslation/i;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->k()Lcom/coloros/translate/ui/dialoguetranslation/i0;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->a:Landroid/content/Context;

    invoke-direct {p2, p1, v0, p0}, Lcom/coloros/translate/ui/dialoguetranslation/i;-><init>(Landroid/view/View;Lcom/coloros/translate/ui/dialoguetranslation/i0;Landroid/content/Context;)V

    return-object p2
.end method

.method public q(Lcom/coloros/translate/ui/dialoguetranslation/i;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->B()V

    return-void
.end method

.method public r(Lcom/coloros/translate/ui/dialoguetranslation/i;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->C()V

    return-void
.end method

.method public final s(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public final t(Lcom/coloros/translate/repository/local/Conversation;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    return-void
.end method

.method public final u(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->c:Z

    return-void
.end method

.method public final w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->d:Z

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->f:I

    return-void
.end method

.method public final y(Lcom/coloros/translate/ui/dialoguetranslation/i0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->g:Lcom/coloros/translate/ui/dialoguetranslation/i0;

    return-void
.end method

.method public final z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/h0;->e:Z

    return-void
.end method
