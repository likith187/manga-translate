.class final Lcom/google/android/gms/internal/mlkit_language_id_common/sb;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/nb;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_language_id_common/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sb;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/nb;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sb;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzh(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/i9;->a(IILjava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sb;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/b;

    add-int/2addr p1, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzi(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzi(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)[Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sb;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/b;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzh(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)I

    move-result p0

    return p0
.end method
