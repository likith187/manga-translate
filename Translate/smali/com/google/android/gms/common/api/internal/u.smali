.class final Lcom/google/android/gms/common/api/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/common/api/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/x;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/common/api/internal/x;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->b:Lcom/google/android/gms/common/api/internal/x;

    iget p0, p0, Lcom/google/android/gms/common/api/internal/u;->a:I

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/x;->A(Lcom/google/android/gms/common/api/internal/x;I)V

    return-void
.end method
