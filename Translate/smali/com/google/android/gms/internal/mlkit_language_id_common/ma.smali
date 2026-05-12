.class public abstract Lcom/google/android/gms/internal/mlkit_language_id_common/ma;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/la;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/ga;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ga;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ga;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/la;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->a(Z)Lcom/google/android/gms/internal/mlkit_language_id_common/la;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/la;->b(I)Lcom/google/android/gms/internal/mlkit_language_id_common/la;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method
