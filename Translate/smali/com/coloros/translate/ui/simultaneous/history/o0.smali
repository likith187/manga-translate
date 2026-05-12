.class public final Lcom/coloros/translate/ui/simultaneous/history/o0;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/o0$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/coloros/translate/ui/simultaneous/history/o0$a;


# instance fields
.field private final g:Landroidx/lifecycle/a0;

.field private final h:Landroidx/lifecycle/y;

.field private final i:Landroidx/lifecycle/a0;

.field private final j:Landroidx/lifecycle/y;

.field private final k:Landroidx/lifecycle/a0;

.field private final l:Landroidx/lifecycle/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/o0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/o0;->m:Lcom/coloros/translate/ui/simultaneous/history/o0$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/q;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->g:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->h:Landroidx/lifecycle/y;

    new-instance p1, Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->i:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->j:Landroidx/lifecycle/y;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->k:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->l:Landroidx/lifecycle/y;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->w(Lcom/coloros/translate/ui/simultaneous/history/o0;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/ui/simultaneous/history/o0;)Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->g:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method private final v(Z)V
    .locals 3

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o0$c;

    invoke-direct {v0, p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$c;-><init>(ZLcom/coloros/translate/ui/simultaneous/history/o0;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic w(Lcom/coloros/translate/ui/simultaneous/history/o0;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/o0;->v(Z)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/Set;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->i:Landroidx/lifecycle/a0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/translate/ui/simultaneous/history/n0;

    invoke-virtual {v4}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o0$b;

    invoke-direct {v0, v3, p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$b;-><init>(Ljava/util/List;Lcom/coloros/translate/ui/simultaneous/history/o0;)V

    const/4 p0, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v2, p0}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final r()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->h:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final s()Lcom/coloros/translate/ui/simultaneous/history/n0;
    .locals 6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->k:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/o;->P(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/ui/simultaneous/history/n0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/simultaneous/history/n0;->c()Lcom/coloros/translate/repository/local/SimultaneousHistory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final t()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->l:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final u()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->j:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final x()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/o0;->g:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/history/o0;->v(Z)V

    return-void
.end method

.method public final y(J)V
    .locals 3

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o0$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/o0$d;-><init>(Lcom/coloros/translate/ui/simultaneous/history/o0;J)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final z(Lcom/coloros/translate/ui/simultaneous/history/n0;Ljava/lang/String;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/o0$e;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/translate/ui/simultaneous/history/o0$e;-><init>(Lcom/coloros/translate/ui/simultaneous/history/n0;Ljava/lang/String;Lcom/coloros/translate/ui/simultaneous/history/o0;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method
