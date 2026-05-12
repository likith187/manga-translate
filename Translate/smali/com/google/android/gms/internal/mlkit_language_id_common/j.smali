.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Lcom/google/android/gms/internal/mlkit_language_id_common/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/m;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a:I

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/i;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/m;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/i;-><init>(ILcom/google/android/gms/internal/mlkit_language_id_common/m;)V

    return-object v0
.end method
