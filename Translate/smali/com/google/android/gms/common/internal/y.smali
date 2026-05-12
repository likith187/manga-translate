.class final Lcom/google/android/gms/common/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$b;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/y;->a:Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/y;->a:Lcom/google/android/gms/common/api/internal/j;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/j;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
