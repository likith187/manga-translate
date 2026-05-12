.class public abstract Lcom/google/android/gms/internal/mlkit_common/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/c0;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/x;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/x;-><init>()V

    const-string v0, "common"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/x;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/c0;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/c0;->a(Z)Lcom/google/android/gms/internal/mlkit_common/c0;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/c0;->b(I)Lcom/google/android/gms/internal/mlkit_common/c0;

    return-object p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method
