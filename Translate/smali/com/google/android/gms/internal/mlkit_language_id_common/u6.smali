.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/u6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;)Lcom/google/android/gms/internal/mlkit_language_id_common/f7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->a:Ljava/lang/Long;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_language_id_common/u6;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/mlkit_language_id_common/f7;)Lcom/google/android/gms/internal/mlkit_language_id_common/u6;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    return-object p0
.end method

.method public final c(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/u6;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/mlkit_language_id_common/w6;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;Lcom/google/android/gms/internal/mlkit_language_id_common/v6;)V

    return-object v0
.end method
