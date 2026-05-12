.class public abstract Lcom/google/android/gms/common/api/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/api/a;

.field private final d:Lcom/google/android/gms/common/api/a$d;

.field private final e:Lcom/google/android/gms/common/api/internal/b;

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/e;

.field private final i:Lcom/google/android/gms/common/api/internal/l;

.field protected final j:Lcom/google/android/gms/common/api/internal/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/d$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 2
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 3
    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "The provided context did not have an application context."

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/api/d;->c:Lcom/google/android/gms/common/api/a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/d;->d:Lcom/google/android/gms/common/api/a$d;

    .line 7
    iget-object v1, p5, Lcom/google/android/gms/common/api/d$a;->b:Landroid/os/Looper;

    iput-object v1, p0, Lcom/google/android/gms/common/api/d;->f:Landroid/os/Looper;

    .line 8
    invoke-static {p3, p4, p1}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->e:Lcom/google/android/gms/common/api/internal/b;

    .line 9
    new-instance p3, Lcom/google/android/gms/common/api/internal/c0;

    invoke-direct {p3, p0}, Lcom/google/android/gms/common/api/internal/c0;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/d;->h:Lcom/google/android/gms/common/api/e;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e;->t(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/e;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/d;->j:Lcom/google/android/gms/common/api/internal/e;

    .line 11
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/e;->k()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/common/api/d;->g:I

    .line 12
    iget-object p4, p5, Lcom/google/android/gms/common/api/d$a;->a:Lcom/google/android/gms/common/api/internal/l;

    iput-object p4, p0, Lcom/google/android/gms/common/api/d;->i:Lcom/google/android/gms/common/api/internal/l;

    if-eqz p2, :cond_0

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_0

    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_0

    .line 14
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/p;->u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/b;)V

    .line 15
    :cond_0
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/e;->D(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/d$a;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/d;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/d$a;)V

    return-void
.end method

.method private final i(ILcom/google/android/gms/common/api/internal/m;)Lw3/i;
    .locals 7

    new-instance v6, Lw3/j;

    invoke-direct {v6}, Lw3/j;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/common/api/d;->i:Lcom/google/android/gms/common/api/internal/l;

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->j:Lcom/google/android/gms/common/api/internal/e;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/e;->z(Lcom/google/android/gms/common/api/d;ILcom/google/android/gms/common/api/internal/m;Lw3/j;Lcom/google/android/gms/common/api/internal/l;)V

    invoke-virtual {v6}, Lw3/j;->a()Lw3/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected b()Lcom/google/android/gms/common/internal/e$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->d(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/e$a;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->c(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->e(Ljava/lang/String;)Lcom/google/android/gms/common/internal/e$a;

    iget-object p0, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/e$a;

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/internal/m;)Lw3/i;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/d;->i(ILcom/google/android/gms/common/api/internal/m;)Lw3/i;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/common/api/internal/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/d;->e:Lcom/google/android/gms/common/api/internal/b;

    return-object p0
.end method

.method protected e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/d;->g:I

    return p0
.end method

.method public final g(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/x;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->b()Lcom/google/android/gms/common/internal/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/e$a;->a()Lcom/google/android/gms/common/internal/e;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    iget-object v5, p0, Lcom/google/android/gms/common/api/d;->d:Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/d;->a:Landroid/content/Context;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/e$a;Lcom/google/android/gms/common/api/e$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p2, p1, Lcom/google/android/gms/common/internal/d;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/internal/d;->N(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_2

    instance-of p0, p1, Lcom/google/android/gms/common/api/internal/i;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final h(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/m0;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/m0;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/d;->b()Lcom/google/android/gms/common/internal/e$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/e$a;->a()Lcom/google/android/gms/common/internal/e;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/common/api/internal/m0;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V

    return-object v0
.end method
