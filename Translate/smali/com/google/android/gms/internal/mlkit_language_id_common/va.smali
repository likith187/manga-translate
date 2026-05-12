.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/va;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id_common/ka;


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

.field private b:Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/eb;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->c:I

    return-void
.end method

.method public static d(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;I)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;I)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/va;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/va;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/h7;I)V

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    return-object p0
.end method

.method public final b(IZ)[B
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->f(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->e(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->m()Lcom/google/android/gms/internal/mlkit_language_id_common/n9;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->f(Lcom/google/android/gms/internal/mlkit_language_id_common/n9;)Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/eb;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->g()Lcom/google/android/gms/internal/mlkit_language_id_common/k7;

    move-result-object p0

    new-instance p1, Ls4/d;

    invoke-direct {p1}, Ls4/d;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/s5;->a:Lr4/a;

    invoke-virtual {p1, p2}, Ls4/d;->g(Lr4/a;)Ls4/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Ls4/d;->h(Z)Ls4/d;

    move-result-object p1

    invoke-virtual {p1}, Ls4/d;->f()Lq4/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lq4/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->g()Lcom/google/android/gms/internal/mlkit_language_id_common/k7;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_language_id_common/r;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/r;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/s5;->a:Lr4/a;

    invoke-interface {p2, p1}, Lr4/a;->a(Lr4/b;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/s;->a(Ljava/lang/Object;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Failed to covert logging to UTF-8 byte array"

    invoke-direct {p1, p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_language_id_common/l9;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->c:I

    return p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/va;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/h7;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/h7;->g()Lcom/google/android/gms/internal/mlkit_language_id_common/k7;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/k7;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/n9;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ja;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/n9;->k()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "NA"

    return-object p0
.end method
