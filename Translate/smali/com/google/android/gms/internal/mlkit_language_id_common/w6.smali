.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/w6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

.field private final c:Ljava/lang/Boolean;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;Lcom/google/android/gms/internal/mlkit_language_id_common/v6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->g(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->a:Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->e(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;)Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/u6;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/u6;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_language_id_common/f7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    return-object p0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/w6;->a:Ljava/lang/Long;

    return-object p0
.end method
