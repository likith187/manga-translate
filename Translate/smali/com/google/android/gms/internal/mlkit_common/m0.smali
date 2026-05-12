.class public final Lcom/google/android/gms/internal/mlkit_common/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/a0;


# instance fields
.field private a:Lu4/b;

.field private final b:Lu4/b;

.field private final c:Lcom/google/android/gms/internal/mlkit_common/d0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/d0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->c:Lcom/google/android/gms/internal/mlkit_common/d0;

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

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/j0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/j0;-><init>(Lw2/g;)V

    invoke-direct {p2, v0}, Lo4/u;-><init>(Lu4/b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->a:Lu4/b;

    :cond_0
    new-instance p2, Lo4/u;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/k0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/k0;-><init>(Lw2/g;)V

    invoke-direct {p2, v0}, Lo4/u;-><init>(Lu4/b;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/m0;->b:Lu4/b;

    return-void
.end method
