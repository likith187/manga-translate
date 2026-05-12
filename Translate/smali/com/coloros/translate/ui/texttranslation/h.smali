.class public final Lcom/coloros/translate/ui/texttranslation/h;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/h$a;,
        Lcom/coloros/translate/ui/texttranslation/h$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/coloros/translate/ui/texttranslation/h$a;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/List;

.field private c:Z

.field private d:Lw8/l;

.field private e:Lw8/l;

.field private f:Lw8/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/h;->g:Lcom/coloros/translate/ui/texttranslation/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/ui/texttranslation/h$b;Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coloros/translate/ui/texttranslation/h;->p(Lcom/coloros/translate/ui/texttranslation/h$b;Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/h;->r(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/h;->q(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/ui/texttranslation/h$b;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/h;->o(Lcom/coloros/translate/ui/texttranslation/h$b;Z)V

    return-void
.end method

.method private static final o(Lcom/coloros/translate/ui/texttranslation/h$b;Z)V
    .locals 1

    const-string v0, "$holder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/h$b;->c()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    return-void
.end method

.method private static final p(Lcom/coloros/translate/ui/texttranslation/h$b;Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V
    .locals 0

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/h$b;->c()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->performClick()Z

    iget-object p0, p1, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p1, Lcom/coloros/translate/ui/texttranslation/h;->f:Lw8/l;

    if-eqz p0, :cond_1

    iget-object p2, p1, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p1, p1, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "selectedItem.size : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HistorySelectionAdapter"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final q(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->d:Lw8/l;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final r(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->e:Lw8/l;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->f:Lw8/l;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearSelectedStates selectedItem.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HistorySelectionAdapter"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->f:Lw8/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    return-object p0
.end method

.method public n(Lcom/coloros/translate/ui/texttranslation/h$b;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/translate/repository/local/TextHistory;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h$b;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/TextHistory;->getOriContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h$b;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/TextHistory;->getResultContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h$b;->b()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/TextHistory;->getExpandField1()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ai"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h$b;->c()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h$b;->c()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v1

    new-instance v2, Lcom/coloros/translate/ui/texttranslation/d;

    invoke-direct {v2, p1, v0}, Lcom/coloros/translate/ui/texttranslation/d;-><init>(Lcom/coloros/translate/ui/texttranslation/h$b;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/e;

    invoke-direct {v1, p1, p0, p2}, Lcom/coloros/translate/ui/texttranslation/e;-><init>(Lcom/coloros/translate/ui/texttranslation/h$b;Lcom/coloros/translate/ui/texttranslation/h;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/coloros/translate/ui/texttranslation/h$b;->c()Lcom/coui/appcompat/checkbox/COUICheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/coloros/translate/ui/texttranslation/f;

    invoke-direct {v1, p0, p2}, Lcom/coloros/translate/ui/texttranslation/f;-><init>(Lcom/coloros/translate/ui/texttranslation/h;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/g;

    invoke-direct {v0, p0, p2}, Lcom/coloros/translate/ui/texttranslation/g;-><init>(Lcom/coloros/translate/ui/texttranslation/h;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/texttranslation/h$b;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/h;->n(Lcom/coloros/translate/ui/texttranslation/h$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/texttranslation/h;->s(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/texttranslation/h$b;

    move-result-object p0

    return-object p0
.end method

.method public s(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/texttranslation/h$b;
    .locals 1

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/coloros/translate/R$layout;->item_selection_history:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/coloros/translate/ui/texttranslation/h$b;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/h$b;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final t()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedAll clear selectedItem.size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HistorySelectionAdapter"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/o;->q()V

    :cond_0
    check-cast v3, Lcom/coloros/translate/repository/local/TextHistory;

    iget-object v3, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedAll selectedItem.size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->f:Lw8/l;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final u(Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "historyList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->c:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final w(Lw8/l;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->d:Lw8/l;

    return-void
.end method

.method public final x(Lw8/l;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->e:Lw8/l;

    return-void
.end method

.method public final y(Lw8/l;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->f:Lw8/l;

    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/h;->f:Lw8/l;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/h;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
