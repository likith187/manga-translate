.class final Lcom/google/android/gms/internal/mlkit_language_id_common/b;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/qb;
.source "SourceFile"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/pb;[Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/qb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzb:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzc:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzc:I

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzb:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/pb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/qb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/nb;->zzj(I)Lcom/google/android/gms/internal/mlkit_language_id_common/h;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;->zzc:I

    return p0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/qb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/jb;->zza([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_language_id_common/g;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/qb;->zzf()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/nb;->zzj(I)Lcom/google/android/gms/internal/mlkit_language_id_common/h;

    move-result-object p0

    return-object p0
.end method

.method final zzg()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/sb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/sb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/b;)V

    return-object v0
.end method
