.class final Lcom/google/android/gms/common/api/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d;


# instance fields
.field final synthetic a:Lw3/j;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/o;Lw3/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->b:Lcom/google/android/gms/common/api/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lw3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lw3/i;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->b:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->a(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lw3/j;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
