.class Lp6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp6/a$b;
    }
.end annotation


# static fields
.field protected static final a:Ljava/util/List;

.field private static final b:Ljava/util/List;

.field private static final c:Ljava/util/List;

.field private static d:Lp6/b$b;

.field private static e:Lp6/b$b;

.field private static f:Lp6/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lp6/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lp6/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lp6/a;->c:Ljava/util/List;

    sget-object v0, Lp6/b$b;->CACHE_AND_DB:Lp6/b$b;

    sput-object v0, Lp6/a;->d:Lp6/b$b;

    sput-object v0, Lp6/a;->e:Lp6/b$b;

    sput-object v0, Lp6/a;->f:Lp6/b$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lp6/b$c;)Ljava/util/List;
    .locals 0

    sget-object p0, Lp6/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget-object p0, Lp6/a;->c:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getCacheList FeatureID is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lp6/a;->b:Ljava/util/List;

    return-object p0

    :cond_2
    sget-object p0, Lp6/a;->a:Ljava/util/List;

    return-object p0
.end method

.method static b(Lp6/b$c;)Lp6/b$b;
    .locals 1

    sget-object v0, Lp6/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lp6/a;->f:Lp6/b$b;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getCachedMode featureID is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lp6/a;->e:Lp6/b$b;

    return-object p0

    :cond_2
    sget-object p0, Lp6/a;->d:Lp6/b$b;

    return-object p0
.end method

.method private d(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lp6/a;->f()Landroid/database/MatrixCursor;

    move-result-object p0

    const-class p2, Lp6/a;

    monitor-enter p2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->close()V

    const/4 p0, 0x0

    :cond_1
    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static e()Lp6/a;
    .locals 1

    sget-object v0, Lp6/a$b;->a:Lp6/a;

    return-object v0
.end method

.method private f()Landroid/database/MatrixCursor;
    .locals 3

    const-string p0, "parameters"

    const-string v0, "lists"

    const-string v1, "_id"

    const-string v2, "featurename"

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method private g(Ljava/util/List;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public c(Lp6/b$c;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lp6/a;->a(Lp6/b$c;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lp6/a;->g(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lp6/a;->d(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
