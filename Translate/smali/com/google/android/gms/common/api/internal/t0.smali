.class final Lcom/google/android/gms/common/api/internal/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/t0;->b:Lcom/google/android/gms/common/ConnectionResult;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/t0;->a:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/internal/t0;->a:I

    return p0
.end method

.method final b()Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/t0;->b:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method
