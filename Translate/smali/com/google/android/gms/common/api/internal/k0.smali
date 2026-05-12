.class final Lcom/google/android/gms/common/api/internal/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/signin/internal/zak;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/m0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/m0;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/k0;->b:Lcom/google/android/gms/common/api/internal/m0;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/k0;->a:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k0;->b:Lcom/google/android/gms/common/api/internal/m0;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/k0;->a:Lcom/google/android/gms/signin/internal/zak;

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/m0;->e(Lcom/google/android/gms/common/api/internal/m0;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
