.class final Lcom/google/android/gms/internal/mlkit_language_id_common/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/g;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lq4/c;

.field private final d:Lcom/google/android/gms/internal/mlkit_language_id_common/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/p;

    return-void
.end method

.method private final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->a:Z

    return-void

    :cond_0
    new-instance p0, Lq4/b;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p0, v0}, Lq4/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a(Lq4/c;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->a:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->c:Lq4/c;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->b:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Lq4/g;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->c:Lq4/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/p;->e(Lq4/c;Ljava/lang/Object;Z)Lq4/e;

    return-object p0
.end method

.method public final c(Z)Lq4/g;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/p;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->c:Lq4/c;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/t;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/p;->f(Lq4/c;IZ)Lcom/google/android/gms/internal/mlkit_language_id_common/p;

    return-object p0
.end method
