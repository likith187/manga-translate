.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/g8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Float;

.field private final b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/e8;Lcom/google/android/gms/internal/mlkit_language_id_common/f8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/e8;)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/g8;->a:Ljava/lang/Float;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/e8;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/e8;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/g8;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/g8;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/g8;->b:Ljava/lang/String;

    return-object p0
.end method
