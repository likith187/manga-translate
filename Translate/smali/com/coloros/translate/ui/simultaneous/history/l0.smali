.class public final Lcom/coloros/translate/ui/simultaneous/history/l0;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/history/l0$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/coloros/translate/ui/simultaneous/history/l0$a;


# instance fields
.field private g:Lcom/coloros/translate/ui/simultaneous/history/k0;

.field private final h:Landroidx/lifecycle/a0;

.field private final i:Landroidx/lifecycle/y;

.field private final j:Landroidx/lifecycle/a0;

.field private final k:Landroidx/lifecycle/y;

.field private final l:Landroidx/lifecycle/a0;

.field private final m:Landroidx/lifecycle/y;

.field private final n:Landroidx/lifecycle/a0;

.field private final o:Landroidx/lifecycle/y;

.field private final p:Landroidx/lifecycle/a0;

.field private final q:Landroidx/lifecycle/y;

.field private final r:Ln8/j;

.field private s:J

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/l0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/l0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->u:Lcom/coloros/translate/ui/simultaneous/history/l0$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/q;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->h:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->i:Landroidx/lifecycle/y;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->j:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->k:Landroidx/lifecycle/y;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->l:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->m:Landroidx/lifecycle/y;

    new-instance p1, Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->n:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->o:Landroidx/lifecycle/y;

    new-instance p1, Landroidx/lifecycle/a0;

    invoke-direct {p1}, Landroidx/lifecycle/a0;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->p:Landroidx/lifecycle/a0;

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->q:Landroidx/lifecycle/y;

    sget-object p1, Lcom/coloros/translate/ui/simultaneous/history/l0$f;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/history/l0$f;

    invoke-static {p1}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->r:Ln8/j;

    return-void
.end method

.method private final C(Lcom/coloros/translate/repository/local/SimultaneousSentence;)J
    .locals 0

    invoke-virtual {p1}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getMsgId()J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x42200000    # 40.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private final G(J)V
    .locals 3

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/l0$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/l0$d;-><init>(Lcom/coloros/translate/ui/simultaneous/history/l0;J)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method private final H(J)V
    .locals 3

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/l0$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/l0$e;-><init>(Lcom/coloros/translate/ui/simultaneous/history/l0;J)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/ui/simultaneous/history/l0;)Ljava/text/SimpleDateFormat;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/history/l0;->y()Ljava/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/coloros/translate/ui/simultaneous/history/l0;Lcom/coloros/translate/repository/local/SimultaneousSentence;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->C(Lcom/coloros/translate/repository/local/SimultaneousSentence;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic q(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->l:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->j:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public static final synthetic s(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->p:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/simultaneous/history/l0;)Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->n:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method private final y()Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->r:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/text/SimpleDateFormat;

    return-object p0
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->s:J

    return-wide v0
.end method

.method public final B(JLw8/l;)V
    .locals 1

    const-string v0, "callBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/history/l0$c;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/coloros/translate/ui/simultaneous/history/l0$c;-><init>(JLcom/coloros/translate/ui/simultaneous/history/l0;Lw8/l;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, v0, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final D()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->q:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final E()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->o:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final F(J)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->G(J)V

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/history/l0;->H(J)V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->l:Landroidx/lifecycle/a0;

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
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/history/l0;->H(J)V

    :cond_1
    return-void
.end method

.method public final J(Ljava/lang/String;)V
    .locals 4

    const-string v0, "newName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/l0$g;

    invoke-direct {v1, v0, p1, p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$g;-><init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Ljava/lang/String;Lcom/coloros/translate/ui/simultaneous/history/l0;)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, p0, p1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->t:Z

    return-void
.end method

.method public final L(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->s:J

    return-void
.end method

.method public final M()V
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->n:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final N(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lb9/d;->d(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->s:J

    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v3}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->g:Lcom/coloros/translate/ui/simultaneous/history/k0;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/k0;->i(J)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->g:Lcom/coloros/translate/ui/simultaneous/history/k0;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-virtual {v6, v1, v2}, Lcom/coloros/translate/ui/simultaneous/history/k0;->i(J)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v17, 0x3f

    const/16 v18, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v6 .. v18}, Lcom/coloros/translate/ui/simultaneous/history/k0;->b(Lcom/coloros/translate/ui/simultaneous/history/k0;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/coloros/translate/ui/simultaneous/history/k0;

    move-result-object v6

    iput-object v6, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->g:Lcom/coloros/translate/ui/simultaneous/history/k0;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/coloros/translate/ui/simultaneous/history/k0;->h()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v17, 0x3f

    const/16 v18, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v6 .. v18}, Lcom/coloros/translate/ui/simultaneous/history/k0;->b(Lcom/coloros/translate/ui/simultaneous/history/k0;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/coloros/translate/ui/simultaneous/history/k0;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->l:Landroidx/lifecycle/a0;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->g:Lcom/coloros/translate/ui/simultaneous/history/k0;

    if-eqz v1, :cond_5

    invoke-static {v4, v1}, Lkotlin/collections/o;->V(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/history/l0;->h:Landroidx/lifecycle/a0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->j:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/history/l0$b;

    invoke-direct {v1, v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$b;-><init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Lcom/coloros/translate/ui/simultaneous/history/l0;)V

    const/4 p0, 0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, p0, v0}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->i:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final w()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->m:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final x()Landroidx/lifecycle/y;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->k:Landroidx/lifecycle/y;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/history/l0;->t:Z

    return p0
.end method
