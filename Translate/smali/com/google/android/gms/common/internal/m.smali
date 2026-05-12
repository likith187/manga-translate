.class public abstract Lcom/google/android/gms/common/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/n;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/o;->b:Lcom/google/android/gms/common/internal/o;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/m;->b(Landroid/content/Context;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/n;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/n;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/service/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/service/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/o;)V

    return-object v0
.end method
