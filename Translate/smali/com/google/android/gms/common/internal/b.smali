.class public abstract Lcom/google/android/gms/common/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/f;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
