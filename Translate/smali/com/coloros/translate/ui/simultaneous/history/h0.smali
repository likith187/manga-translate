.class public final Lcom/coloros/translate/ui/simultaneous/history/h0;
.super Landroidx/recyclerview/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/h0$b;,
        Lcom/coloros/translate/ui/simultaneous/history/h0$c;,
        Lcom/coloros/translate/ui/simultaneous/history/h0$d;,
        Lcom/coloros/translate/ui/simultaneous/history/h0$e;
    }
.end annotation


# static fields
.field public static final i:Lcom/coloros/translate/ui/simultaneous/history/h0$b;


# instance fields
.field private a:Lcom/coloros/translate/ui/simultaneous/history/h0$e;

.field private final b:Ln8/j;

.field private final c:Ln8/j;

.field private final d:Ln8/j;

.field private e:Z

.field private f:Z

.field private g:Ln8/q;

.field private final h:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/h0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/h0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/h0;->i:Lcom/coloros/translate/ui/simultaneous/history/h0$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/h0$a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/history/h0$a;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/k$f;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/h0$g;

    invoke-direct {v0, p1}, Lcom/coloros/translate/ui/simultaneous/history/h0$g;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->b:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/h0$i;

    invoke-direct {v0, p1}, Lcom/coloros/translate/ui/simultaneous/history/h0$i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->c:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/h0$h;

    invoke-direct {v0, p1}, Lcom/coloros/translate/ui/simultaneous/history/h0$h;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->d:Ln8/j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->e:Z

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/history/h0$f;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/history/h0$f;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->h:Ln8/j;

    return-void
.end method

.method public static final synthetic f(Lcom/coloros/translate/ui/simultaneous/history/h0;)I
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/h0;->l()I

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/ui/simultaneous/history/h0;)I
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/h0;->m()I

    move-result p0

    return p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/ui/simultaneous/history/h0;)I
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/h0;->n()I

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/ui/simultaneous/history/h0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->e:Z

    return p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/ui/simultaneous/history/h0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->f:Z

    return p0
.end method

.method private final k()Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->h:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private final l()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final m()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final n()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final o()Lcom/coloros/translate/ui/simultaneous/history/h0$e;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->a:Lcom/coloros/translate/ui/simultaneous/history/h0$e;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/h0$d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0;->p(Lcom/coloros/translate/ui/simultaneous/history/h0$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/h0;->q(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/simultaneous/history/h0$d;

    move-result-object p0

    return-object p0
.end method

.method public p(Lcom/coloros/translate/ui/simultaneous/history/h0$d;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/coloros/translate/ui/simultaneous/history/h0$c;

    const-string v1, "getItem(...)"

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coloros/translate/ui/simultaneous/history/h0$c;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->g:Ln8/q;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/q;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/h0$c;->g(Ln8/q;Lcom/coloros/translate/ui/simultaneous/history/k0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/q;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;->d(Lcom/coloros/translate/ui/simultaneous/history/k0;)V

    :goto_0
    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/simultaneous/history/h0$d;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/coloros/translate/ui/simultaneous/history/h0$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$layout;->item_simultaneous_history_details_top:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/h0$c;-><init>(Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/coloros/translate/ui/simultaneous/history/h0$d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/coloros/translate/R$layout;->item_simultaneous_history_details:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/h0$d;-><init>(Lcom/coloros/translate/ui/simultaneous/history/h0;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public final r(Lcom/coloros/translate/ui/simultaneous/history/h0$e;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->a:Lcom/coloros/translate/ui/simultaneous/history/h0$e;

    return-void
.end method

.method public final s(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->f:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->f:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final t(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->e:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public final u(Lcom/coloros/translate/repository/local/SimultaneousHistory;)V
    .locals 6

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln8/q;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/h0;->k()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getTimestamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ln8/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/h0;->g:Ln8/q;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/q;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
