.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/e8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Float;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/mlkit_language_id_common/e8;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->a:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/mlkit_language_id_common/e8;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/e8;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_language_id_common/g8;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/g8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/g8;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/e8;Lcom/google/android/gms/internal/mlkit_language_id_common/f8;)V

    return-object v0
.end method
