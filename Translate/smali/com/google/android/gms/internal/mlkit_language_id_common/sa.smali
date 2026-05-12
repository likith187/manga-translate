.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/sa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

.field private static final l:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_common/ra;

.field private final d:Lf5/j;

.field private final e:Lw3/i;

.field private final f:Lw3/i;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/pb;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->l:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf5/j;Lcom/google/android/gms/internal/mlkit_language_id_common/ra;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->a:Ljava/lang/String;

    invoke-static {p1}, Lf5/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->d:Lf5/j;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ra;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/eb;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/eb;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->g:Ljava/lang/String;

    invoke-static {}, Lf5/f;->a()Lf5/f;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/oa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/oa;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/sa;)V

    invoke-virtual {p3, v0}, Lf5/f;->b(Ljava/util/concurrent/Callable;)Lw3/i;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->e:Lw3/i;

    invoke-static {}, Lf5/f;->a()Lf5/f;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/pa;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/pa;-><init>(Lf5/j;)V

    invoke-virtual {p3, v0}, Lf5/f;->b(Ljava/util/concurrent/Callable;)Lw3/i;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->f:Lw3/i;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->l:Lcom/google/android/gms/internal/mlkit_language_id_common/pb;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/pb;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_language_id_common/pb;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->h:I

    return-void
.end method

.method private static declared-synchronized f()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->k:Lcom/google/android/gms/internal/mlkit_language_id_common/nb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lz/e;->a(Landroid/content/res/Configuration;)Lz/f;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_language_id_common/kb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/kb;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Lz/f;->f()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lz/f;->c(I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lf5/c;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_language_id_common/kb;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/kb;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/kb;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->k:Lcom/google/android/gms/internal/mlkit_language_id_common/nb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->e:Lw3/i;

    invoke-virtual {v0}, Lw3/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->e:Lw3/i;

    invoke-virtual {p0}, Lw3/i;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/i;->a()Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/internal/i;->a()Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final synthetic b(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->a(Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->zzd()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->f()Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->h(Lcom/google/android/gms/internal/mlkit_language_id_common/nb;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->g(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->f:Lw3/i;

    invoke-virtual {p2}, Lw3/i;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->f:Lw3/i;

    invoke-virtual {p2}, Lw3/i;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->d:Lf5/j;

    invoke-virtual {p2}, Lf5/j;->a()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->d(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->h:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/l9;->k(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_language_id_common/l9;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/ka;->c(Lcom/google/android/gms/internal/mlkit_language_id_common/l9;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/ra;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ra;->a(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lf5/f;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;-><init>(Lcom/google/android/gms/internal/mlkit_language_id_common/sa;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/google/mlkit/nl/languageid/internal/c;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->i:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->i:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->i:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/mlkit/nl/languageid/internal/c;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->d(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V

    return-void
.end method
