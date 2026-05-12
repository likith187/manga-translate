.class public final enum Lcom/google/android/gms/internal/mlkit_language_id_common/e7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id_common/l;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/mlkit_language_id_common/e7;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zza:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    const-string v2, "TYPE_THIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzb:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    const-string v3, "TYPE_THICK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzc:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    const-string v4, "TYPE_GMV"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzd:Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zze:[Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_language_id_common/e7;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zze:[Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_language_id_common/e7;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e7;->zzf:I

    return p0
.end method
