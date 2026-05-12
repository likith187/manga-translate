.class public final Lcom/google/android/gms/internal/mlkit_common/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/a0;


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/d0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/e0;->a:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/d0;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/m0;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_common/m0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/d0;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
