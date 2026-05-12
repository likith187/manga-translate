.class public Lcom/coloros/translate/ui/simultaneous/main/k;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/main/k$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/coloros/translate/ui/simultaneous/main/k$a;


# instance fields
.field private a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

.field private volatile b:J

.field private c:Z

.field private d:Ljava/util/List;

.field private volatile e:J

.field private volatile f:J

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/main/k;->i:Lcom/coloros/translate/ui/simultaneous/main/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 1

    const-string v0, "viewControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->d:Ljava/util/List;

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->g:Z

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/ui/simultaneous/main/k;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/k;->m(Lcom/coloros/translate/ui/simultaneous/main/k;Landroid/view/View;)V

    return-void
.end method

.method private static final m(Lcom/coloros/translate/ui/simultaneous/main/k;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->H()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->h:Z

    return p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->e:J

    return-wide v0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->d:Ljava/util/List;

    return-object p0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->f:J

    return-wide v0
.end method

.method public k(Lcom/coloros/translate/ui/simultaneous/main/c;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo2/a;

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->g:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lo2/a;->d()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->e:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lo2/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v4, v8

    goto :goto_1

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/k;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v8

    if-ne p2, v0, :cond_0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/k;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v8

    if-ne p2, v0, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    iget-boolean v3, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->c:Z

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->h:Z

    xor-int/lit8 v5, v0, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/translate/ui/simultaneous/main/c;->l(Lo2/a;ZZZZ)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/k;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v8

    if-ne p2, v0, :cond_3

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->h:Z

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v8, v7

    :goto_3
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->e:J

    iget-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->h:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowLoading\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " currentMsgId\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bottomButtonSpeaking\uff1a"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimultaneousMainAdapter"

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/coloros/translate/ui/simultaneous/main/c;->m(Z)V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/c;->c()V

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/c;->k()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/coloros/translate/ui/simultaneous/main/j;

    invoke-direct {p2, p0}, Lcom/coloros/translate/ui/simultaneous/main/j;-><init>(Lcom/coloros/translate/ui/simultaneous/main/k;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public l(Lcom/coloros/translate/ui/simultaneous/main/c;ILjava/util/List;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/a;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const-string v2, "SimultaneousMainAdapter"

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, -0x63

    if-ne v1, v5, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lo2/a;->d()J

    move-result-wide p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder defaultHistoryColor msgId\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/coloros/translate/ui/simultaneous/main/c;->n(Z)V

    invoke-virtual {p1, v0}, Lcom/coloros/translate/ui/simultaneous/main/c;->e(Lo2/a;)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/k;->getItemCount()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lo2/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    move v4, v5

    :cond_1
    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Lo2/a;->d()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder model\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " payloads\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " needAlpha:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/coloros/translate/ui/simultaneous/main/c;->n(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/k;->k(Lcom/coloros/translate/ui/simultaneous/main/c;I)V

    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/simultaneous/main/c;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/ui/simultaneous/main/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/coloros/translate/R$layout;->si_rtt_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/c;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final o()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->e:J

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/c;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/k;->k(Lcom/coloros/translate/ui/simultaneous/main/c;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/coloros/translate/ui/simultaneous/main/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/translate/ui/simultaneous/main/k;->l(Lcom/coloros/translate/ui/simultaneous/main/c;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/k;->n(Landroid/view/ViewGroup;I)Lcom/coloros/translate/ui/simultaneous/main/c;

    move-result-object p0

    return-object p0
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->h:Z

    return-void
.end method

.method public final q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->g:Z

    return-void
.end method

.method public final r(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->b:J

    return-void
.end method

.method public final s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->e:J

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->d:Ljava/util/List;

    return-void
.end method

.method public final u(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->f:J

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/k;->c:Z

    return-void
.end method
