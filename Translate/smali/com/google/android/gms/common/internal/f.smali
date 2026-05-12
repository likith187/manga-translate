.class public abstract Lcom/google/android/gms/common/internal/f;
.super Lcom/google/android/gms/common/internal/d;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;


# instance fields
.field private final F:Lcom/google/android/gms/common/internal/e;

.field private final G:Ljava/util/Set;

.field private final H:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/e$a;Lcom/google/android/gms/common/api/e$b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/internal/j;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/internal/j;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/g;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/g;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/a;->l()Lcom/google/android/gms/common/a;

    move-result-object v4

    .line 4
    invoke-static {p5}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/api/internal/d;

    .line 5
    invoke-static {p6}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lcom/google/android/gms/common/api/internal/j;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/a;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/internal/j;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/a;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/internal/j;)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Lcom/google/android/gms/common/internal/x;

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/internal/x;-><init>(Lcom/google/android/gms/common/api/internal/d;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/y;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/y;-><init>(Lcom/google/android/gms/common/api/internal/j;)V

    move-object v7, v0

    .line 9
    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/e;->h()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/google/android/gms/common/internal/f;->F:Lcom/google/android/gms/common/internal/e;

    .line 11
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/e;->a()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Lcom/google/android/gms/common/internal/f;->H:Landroid/accounts/Account;

    .line 12
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/f;->h0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/common/internal/f;->G:Ljava/util/Set;

    return-void
.end method

.method private final h0(Ljava/util/Set;)Ljava/util/Set;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/f;->g0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected final A()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->G:Ljava/util/Set;

    return-object p0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->G:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected g0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    return-object p1
.end method

.method public final s()Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/f;->H:Landroid/accounts/Account;

    return-object p0
.end method

.method protected u()Ljava/util/concurrent/Executor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
