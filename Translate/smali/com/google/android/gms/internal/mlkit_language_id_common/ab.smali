.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id_common/ra;


# instance fields
.field private a:Lu4/b;

.field private final b:Lu4/b;

.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_language_id_common/ma;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    sget-object p2, Lcom/google/android/datatransport/cct/a;->INSTANCE:Lcom/google/android/datatransport/cct/a;

    invoke-static {p1}, Ly2/r;->f(Landroid/content/Context;)V

    invoke-static {}, Ly2/r;->c()Ly2/r;

    move-result-object p1

    invoke-virtual {p1, p2}, Ly2/r;->g(Ly2/e;)Lw2/g;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/datatransport/cct/a;->a()Ljava/util/Set;

    move-result-object p2

    const-string v0, "json"

    invoke-static {v0}, Lw2/b;->b(Ljava/lang/String;)Lw2/b;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lo4/u;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/xa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/xa;-><init>(Lw2/g;)V

    invoke-direct {p2, v0}, Lo4/u;-><init>(Lu4/b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->a:Lu4/b;

    :cond_0
    new-instance p2, Lo4/u;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ya;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ya;-><init>(Lw2/g;)V

    invoke-direct {p2, v0}, Lo4/u;-><init>(Lu4/b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->b:Lu4/b;

    return-void
.end method

.method static b(Lcom/google/android/gms/internal/mlkit_language_id_common/ma;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)Lw2/c;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->a()I

    move-result p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->zza()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->b(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lw2/c;->d(Ljava/lang/Object;)Lw2/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->b(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lw2/c;->e(Ljava/lang/Object;)Lw2/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->a:Lu4/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu4/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/f;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/ma;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)Lw2/c;

    move-result-object p0

    invoke-interface {v0, p0}, Lw2/f;->a(Lw2/c;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->b:Lu4/b;

    invoke-interface {v0}, Lu4/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/f;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ab;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/ma;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)Lw2/c;

    move-result-object p0

    invoke-interface {v0, p0}, Lw2/f;->a(Lw2/c;)V

    return-void
.end method
