.class final Lcom/google/android/gms/internal/mlkit_language_id_common/e;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/pb;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;


# instance fields
.field final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/e;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/pb;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzc:I

    return-void
.end method

.method static zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_language_id_common/ob;)Lcom/google/android/gms/internal/mlkit_language_id_common/e;
    .locals 1

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/gb;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/e;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzb:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzc:I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-object p0, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-nez p0, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzc:I

    return p0
.end method

.method final zza()Lcom/google/android/gms/internal/mlkit_language_id_common/jb;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzc:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/d;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzd()Lcom/google/android/gms/internal/mlkit_language_id_common/qb;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzc:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/b;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/pb;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zze()Lcom/google/android/gms/internal/mlkit_language_id_common/qb;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzb:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e;->zzc:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/d;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/c;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/c;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/pb;Lcom/google/android/gms/internal/mlkit_language_id_common/nb;)V

    return-object v1
.end method
