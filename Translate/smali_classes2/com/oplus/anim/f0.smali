.class public abstract Lcom/oplus/anim/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Set;

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/anim/f0;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oplus/anim/f0;->b:Ljava/util/Set;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/anim/f0;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
.end method

.method private static A(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static B(Lt9/f;)Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lt9/f;->j0()Lt9/f;

    move-result-object p0

    sget-object v0, Lcom/oplus/anim/f0;->c:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    invoke-interface {p0}, Lt9/f;->C0()B

    move-result v4

    if-eq v4, v3, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lt9/a0;->close()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    const-string v0, "Failed to check zip file header"

    invoke-static {v0, p0}, Ll6/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic C(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p2, Lcom/oplus/anim/f0;->a:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/oplus/anim/f0;->J(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic D(Lcom/oplus/anim/a;)Lcom/oplus/anim/r;
    .locals 1

    new-instance v0, Lcom/oplus/anim/r;

    invoke-direct {v0, p0}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic E(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/oplus/anim/a;)V
    .locals 0

    sget-object p2, Lcom/oplus/anim/f0;->a:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/oplus/anim/f0;->J(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/anim/f0;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic G(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->o(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic H(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/oplus/anim/f0;->v(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 1

    invoke-static {p0}, Lcom/oplus/anim/k0;->d(Landroid/content/Context;)Lj6/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj6/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/r;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lf6/c;->b()Lf6/c;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/anim/r;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/a;

    invoke-virtual {p1, p2, v0}, Lf6/c;->c(Ljava/lang/String;Lcom/oplus/anim/a;)V

    :cond_0
    return-object p0
.end method

.method private static J(Z)V
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/oplus/anim/f0;->b:Ljava/util/Set;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static K(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oplus/anim/f0;->A(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_night_"

    goto :goto_0

    :cond_0
    const-string p0, "_day_"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/oplus/anim/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/anim/f0;->E(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/oplus/anim/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/anim/a;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0}, Lcom/oplus/anim/f0;->D(Lcom/oplus/anim/a;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/anim/f0;->C(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->G(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/anim/f0;->H(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/anim/f0;->F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/oplus/anim/f0;->I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method private static h(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/t;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf6/c;->b()Lf6/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf6/c;->a(Ljava/lang/String;)Lcom/oplus/anim/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, Lcom/oplus/anim/t;

    new-instance p1, Lcom/oplus/anim/c0;

    invoke-direct {p1, v0}, Lcom/oplus/anim/c0;-><init>(Lcom/oplus/anim/a;)V

    invoke-direct {p0, p1}, Lcom/oplus/anim/t;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/oplus/anim/f0;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/t;

    return-object p0

    :cond_2
    new-instance v0, Lcom/oplus/anim/t;

    invoke-direct {v0, p1}, Lcom/oplus/anim/t;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_3

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lcom/oplus/anim/d0;

    invoke-direct {v2, p0, p1}, Lcom/oplus/anim/d0;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v2}, Lcom/oplus/anim/t;->d(Lcom/oplus/anim/p;)Lcom/oplus/anim/t;

    new-instance v2, Lcom/oplus/anim/e0;

    invoke-direct {v2, p0, p1}, Lcom/oplus/anim/e0;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v2}, Lcom/oplus/anim/t;->c(Lcom/oplus/anim/p;)Lcom/oplus/anim/t;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/oplus/anim/f0;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    invoke-static {v1}, Lcom/oplus/anim/f0;->J(Z)V

    :cond_3
    return-object v0
.end method

.method private static i(Lcom/oplus/anim/a;Ljava/lang/String;)Lcom/oplus/anim/g0;
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/anim/a;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/g0;

    invoke-virtual {v0}, Lcom/oplus/anim/g0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/t;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/t;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/oplus/anim/b0;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/anim/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/oplus/anim/f0;->h(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 2

    :try_start_0
    const-string v0, ".zip"

    invoke-static {p1, v0}, Ll6/h;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".lottie"

    invoke-static {p1, v0}, Ll6/h;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/oplus/anim/f0;->o(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0, p2}, Lcom/oplus/anim/f0;->y(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance p1, Lcom/oplus/anim/r;

    invoke-direct {p1, p0}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static n(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/t;
    .locals 1

    new-instance v0, Lcom/oplus/anim/y;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/y;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/anim/f0;->h(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->p(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method private static p(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/oplus/anim/r;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lt9/n;->e(Ljava/io/InputStream;)Lt9/a0;

    move-result-object v0

    invoke-static {v0}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/c;->a0(Lt9/f;)Lcom/oplus/anim/parser/moshi/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/f0;->q(Lcom/oplus/anim/parser/moshi/c;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-static {p0}, Ll6/h;->c(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    invoke-static {p0}, Ll6/h;->c(Ljava/io/Closeable;)V

    :cond_1
    throw p1
.end method

.method public static q(Lcom/oplus/anim/parser/moshi/c;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->r(Lcom/oplus/anim/parser/moshi/c;Ljava/lang/String;Z)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method private static r(Lcom/oplus/anim/parser/moshi/c;Ljava/lang/String;Z)Lcom/oplus/anim/r;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lk6/l;->a(Lcom/oplus/anim/parser/moshi/c;)Lcom/oplus/anim/a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lf6/c;->b()Lf6/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lf6/c;->c(Ljava/lang/String;Lcom/oplus/anim/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lcom/oplus/anim/r;

    invoke-direct {p1, v0}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-static {p0}, Ll6/h;->c(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :goto_1
    :try_start_1
    new-instance v0, Lcom/oplus/anim/r;

    invoke-direct {v0, p1}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    invoke-static {p0}, Ll6/h;->c(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_2
    if-eqz p2, :cond_3

    invoke-static {p0}, Ll6/h;->c(Ljava/io/Closeable;)V

    :cond_3
    throw p1
.end method

.method public static s(Landroid/content/Context;I)Lcom/oplus/anim/t;
    .locals 1

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->K(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->t(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/t;
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lcom/oplus/anim/a0;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/oplus/anim/a0;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p2, v1}, Lcom/oplus/anim/f0;->h(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;I)Lcom/oplus/anim/r;
    .locals 1

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->K(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->v(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lt9/n;->e(Ljava/io/InputStream;)Lt9/a0;

    move-result-object p1

    invoke-static {p1}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/anim/f0;->B(Lt9/f;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-interface {p1}, Lt9/f;->B0()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0, p2}, Lcom/oplus/anim/f0;->y(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lt9/f;->B0()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/oplus/anim/f0;->o(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance p1, Lcom/oplus/anim/r;

    invoke-direct {p1, p0}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/t;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/t;
    .locals 1

    new-instance v0, Lcom/oplus/anim/z;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/anim/z;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/oplus/anim/f0;->h(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/t;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/oplus/anim/f0;->z(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Ll6/h;->c(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Ll6/h;->c(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static z(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "__MACOSX"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_8

    :catch_0
    move-exception p0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "manifest.json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, ".json"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lt9/n;->e(Ljava/io/InputStream;)Lt9/a0;

    move-result-object v2

    invoke-static {v2}, Lt9/n;->b(Lt9/a0;)Lt9/f;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/anim/parser/moshi/c;->a0(Lt9/f;)Lcom/oplus/anim/parser/moshi/c;

    move-result-object v2

    invoke-static {v2, v3, v6}, Lcom/oplus/anim/f0;->r(Lcom/oplus/anim/parser/moshi/c;Ljava/lang/String;Z)Lcom/oplus/anim/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/r;->b()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/oplus/anim/a;

    goto/16 :goto_8

    :cond_2
    const-string v2, ".png"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "/"

    if-nez v2, :cond_8

    :try_start_1
    const-string v2, ".webp"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".jpg"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".jpeg"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v2, ".ttf"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".otf"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_8

    :cond_5
    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    sub-int/2addr v7, v5

    aget-object v2, v2, v7

    const-string v5, "\\."

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v10, 0x1000

    :try_start_3
    new-array v10, v10, [B

    :goto_2
    invoke-virtual {p1, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    invoke-virtual {v9, v10, v6, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v6

    goto :goto_5

    :goto_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v9

    :try_start_6
    invoke-virtual {v6, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to save font "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to the temporary file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ll6/e;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {v7}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete temp font file "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ll6/e;->c(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    sub-int/2addr v6, v5

    aget-object v2, v2, v6

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_a

    new-instance p0, Lcom/oplus/anim/r;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to parse composition"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_a
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/oplus/anim/f0;->i(Lcom/oplus/anim/a;Ljava/lang/String;)Lcom/oplus/anim/g0;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lcom/oplus/anim/g0;->e()I

    move-result v7

    invoke-virtual {v2}, Lcom/oplus/anim/g0;->c()I

    move-result v8

    invoke-static {p1, v7, v8}, Ll6/h;->l(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/oplus/anim/g0;->f(Landroid/graphics/Bitmap;)V

    goto :goto_9

    :cond_c
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v4}, Lcom/oplus/anim/a;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :cond_e
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf6/d;

    invoke-virtual {v7}, Lf6/d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v7, v2}, Lf6/d;->e(Landroid/graphics/Typeface;)V

    move v2, v5

    goto :goto_b

    :cond_f
    if-nez v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsed font for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " however it was not found in the animation."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ll6/e;->c(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {v4}, Lcom/oplus/anim/a;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/g0;

    if-nez p1, :cond_12

    return-object v3

    :cond_12
    invoke-virtual {p1}, Lcom/oplus/anim/g0;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v2, 0xa0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v2, "data:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "base64,"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_11

    const/16 v2, 0x2c

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1

    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/anim/g0;->f(Landroid/graphics/Bitmap;)V

    goto :goto_c

    :catch_1
    move-exception p0

    const-string p1, "data URL did not have correct base64 format."

    invoke-static {p1, p0}, Ll6/e;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_13
    invoke-virtual {v4}, Lcom/oplus/anim/a;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/g0;

    invoke-virtual {v0}, Lcom/oplus/anim/g0;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance p0, Lcom/oplus/anim/r;

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no image for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/g0;

    invoke-virtual {p1}, Lcom/oplus/anim/g0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_15
    if-eqz p2, :cond_16

    invoke-static {}, Lf6/c;->b()Lf6/c;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Lf6/c;->c(Ljava/lang/String;Lcom/oplus/anim/a;)V

    :cond_16
    new-instance p0, Lcom/oplus/anim/r;

    invoke-direct {p0, v4}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Object;)V

    return-object p0

    :goto_d
    new-instance p1, Lcom/oplus/anim/r;

    invoke-direct {p1, p0}, Lcom/oplus/anim/r;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method
