.class final Lcom/google/android/gms/internal/mlkit_language_id_common/cb;
.super Lf5/e;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/bb;)V
    .locals 0

    invoke-direct {p0}, Lf5/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    invoke-static {}, Lf5/g;->c()Lf5/g;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/na;

    invoke-static {}, Lf5/g;->c()Lf5/g;

    move-result-object v2

    invoke-virtual {v2}, Lf5/g;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/na;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_language_id_common/ma;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ma;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lf5/g;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lf5/j;

    invoke-virtual {v0, v3}, Lf5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/j;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;-><init>(Landroid/content/Context;Lf5/j;Lcom/google/android/gms/internal/mlkit_language_id_common/ra;Ljava/lang/String;)V

    return-object p0
.end method
