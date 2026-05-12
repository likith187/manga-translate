.class public Lcom/google/android/gms/common/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/common/internal/h;

.field private static final c:Lcom/google/android/gms/common/internal/i;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/h;

    const-string v1, "LibraryVersion"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/internal/i;->b:Lcom/google/android/gms/common/internal/h;

    new-instance v0, Lcom/google/android/gms/common/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/i;->c:Lcom/google/android/gms/common/internal/i;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/internal/i;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/internal/i;->c:Lcom/google/android/gms/common/internal/i;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "Failed to get app version for libraryName: "

    const-string v1, "LibraryVersion"

    const-string v2, "Please provide a valid libraryName"

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/k;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "/%s.properties"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/android/gms/common/internal/i;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "version"

    invoke-virtual {v2, v5, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/google/android/gms/common/internal/i;->b:Lcom/google/android/gms/common/internal/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/common/internal/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/gms/common/internal/i;->b:Lcom/google/android/gms/common/internal/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/common/internal/h;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_0
    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v4, v3

    :goto_1
    :try_start_2
    sget-object v5, Lcom/google/android/gms/common/internal/i;->b:Lcom/google/android/gms/common/internal/h;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0, v2}, Lcom/google/android/gms/common/internal/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_2
    if-eqz v4, :cond_2

    invoke-static {v4}, Lr3/g;->a(Ljava/io/Closeable;)V

    :cond_2
    if-nez v3, :cond_3

    sget-object v0, Lcom/google/android/gms/common/internal/i;->b:Lcom/google/android/gms/common/internal/h;

    const-string v2, ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "UNKNOWN"

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/common/internal/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :goto_3
    if-eqz v3, :cond_4

    invoke-static {v3}, Lr3/g;->a(Ljava/io/Closeable;)V

    :cond_4
    throw p0
.end method
