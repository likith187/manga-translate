.class final Lcom/google/android/gms/internal/mlkit_common/o0;
.super Lf5/e;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/n0;)V
    .locals 0

    invoke-direct {p0}, Lf5/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/d0;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/h0;

    invoke-static {}, Lf5/g;->c()Lf5/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/e0;

    invoke-static {}, Lf5/g;->c()Lf5/g;

    move-result-object v2

    invoke-virtual {v2}, Lf5/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_common/e0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/d0;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/d0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lf5/g;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lf5/j;

    invoke-virtual {v0, v3}, Lf5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/j;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_common/h0;-><init>(Landroid/content/Context;Lf5/j;Lcom/google/android/gms/internal/mlkit_common/a0;Ljava/lang/String;)V

    return-object p0
.end method
