.class public final Lcom/google/android/gms/common/api/internal/p;
.super Lcom/google/android/gms/common/api/internal/w0;
.source "SourceFile"


# instance fields
.field private final i:Landroidx/collection/b;

.field private final j:Lcom/google/android/gms/common/api/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/a;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/w0;-><init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/a;)V

    new-instance p1, Landroidx/collection/b;

    invoke-direct {p1}, Landroidx/collection/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/p;->i:Landroidx/collection/b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/p;->j:Lcom/google/android/gms/common/api/internal/e;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/g;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/common/api/internal/g;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/b;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/g;

    move-result-object p0

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v1, Lcom/google/android/gms/common/api/internal/p;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/g;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/p;

    invoke-static {}, Lcom/google/android/gms/common/a;->l()Lcom/google/android/gms/common/a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/a;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/p;->i:Landroidx/collection/b;

    invoke-virtual {p0, p2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/e;->a(Lcom/google/android/gms/common/api/internal/p;)V

    return-void
.end method

.method private final v()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->i:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->j:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/e;->a(Lcom/google/android/gms/common/api/internal/p;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/p;->v()V

    return-void
.end method

.method public final j()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/w0;->j()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/p;->v()V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/w0;->k()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/p;->j:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/e;->b(Lcom/google/android/gms/common/api/internal/p;)V

    return-void
.end method

.method protected final m(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p;->j:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/e;->B(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final n()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p;->j:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/e;->C()V

    return-void
.end method

.method final t()Landroidx/collection/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/p;->i:Landroidx/collection/b;

    return-object p0
.end method
