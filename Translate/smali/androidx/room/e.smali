.class public Landroidx/room/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/e$b;,
        Landroidx/room/e$c;,
        Landroidx/room/e$d;
    }
.end annotation


# static fields
.field private static final m:[Ljava/lang/String;


# instance fields
.field final a:Ljava/util/HashMap;

.field final b:[Ljava/lang/String;

.field private c:Ljava/util/Map;

.field final d:Landroidx/room/h;

.field e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile f:Z

.field volatile g:Ls0/f;

.field private h:Landroidx/room/e$b;

.field private final i:Landroidx/room/d;

.field final j:Li/b;

.field private k:Landroidx/room/f;

.field l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DELETE"

    const-string v1, "INSERT"

    const-string v2, "UPDATE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/e;->m:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/h;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Landroidx/room/e;->f:Z

    new-instance v0, Li/b;

    invoke-direct {v0}, Li/b;-><init>()V

    iput-object v0, p0, Landroidx/room/e;->j:Li/b;

    new-instance v0, Landroidx/room/e$a;

    invoke-direct {v0, p0}, Landroidx/room/e$a;-><init>(Landroidx/room/e;)V

    iput-object v0, p0, Landroidx/room/e;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/room/e;->d:Landroidx/room/h;

    new-instance v0, Landroidx/room/e$b;

    array-length v2, p4

    invoke-direct {v0, v2}, Landroidx/room/e$b;-><init>(I)V

    iput-object v0, p0, Landroidx/room/e;->h:Landroidx/room/e$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    iput-object p3, p0, Landroidx/room/e;->c:Ljava/util/Map;

    new-instance p3, Landroidx/room/d;

    invoke-direct {p3, p1}, Landroidx/room/d;-><init>(Landroidx/room/h;)V

    iput-object p3, p0, Landroidx/room/e;->i:Landroidx/room/d;

    array-length p1, p4

    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object p3, p4, v1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, p4, v1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object p3, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aput-object p3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "room_table_modification_trigger_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private h([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/room/e;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p0, Landroidx/room/e;->c:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private j(Ls0/b;I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aget-object p0, p0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/room/e;->m:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0, v5}, Landroidx/room/e;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, " AFTER "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ON `"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "` BEGIN UPDATE "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "room_table_modification_log"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "invalidated"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = 1"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " WHERE "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "table_id"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = 0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; END"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ls0/b;->y(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k(Ls0/b;I)V
    .locals 6

    iget-object p0, p0, Landroidx/room/e;->b:[Ljava/lang/String;

    aget-object p0, p0, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroidx/room/e;->m:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "DROP TRIGGER IF EXISTS "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p0, v4}, Landroidx/room/e;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ls0/b;->y(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/room/e$c;)V
    .locals 7

    iget-object v0, p1, Landroidx/room/e$c;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/room/e;->h([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Landroidx/room/e;->a:Ljava/util/HashMap;

    aget-object v5, v0, v3

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no table with name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v2, Landroidx/room/e$d;

    invoke-direct {v2, p1, v1, v0}, Landroidx/room/e$d;-><init>(Landroidx/room/e$c;[I[Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/e;->j:Li/b;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Landroidx/room/e;->j:Li/b;

    invoke-virtual {v3, p1, v2}, Li/b;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/e$d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/room/e;->h:Landroidx/room/e$b;

    invoke-virtual {p1, v1}, Landroidx/room/e$b;->b([I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/room/e;->l()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method c()Z
    .locals 2

    iget-object v0, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/room/e;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->i()Ls0/c;

    move-result-object v0

    invoke-interface {v0}, Ls0/c;->c()Ls0/b;

    :cond_1
    iget-boolean p0, p0, Landroidx/room/e;->f:Z

    if-nez p0, :cond_2

    const-string p0, "ROOM"

    const-string v0, "database is not initialized even though it is open"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method d(Ls0/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/room/e;->f:Z

    if-eqz v0, :cond_0

    const-string p1, "ROOM"

    const-string v0, "Invalidation tracker is initialized twice :/."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    const-string v0, "CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-interface {p1, v0}, Ls0/b;->y(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/room/e;->m(Ls0/b;)V

    const-string v0, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 "

    invoke-interface {p1, v0}, Ls0/b;->J(Ljava/lang/String;)Ls0/f;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/e;->g:Ls0/f;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/room/e;->f:Z

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs e([Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/room/e;->j:Li/b;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/room/e;->j:Li/b;

    invoke-virtual {p0}, Li/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/e$c;

    invoke-virtual {v2}, Landroidx/room/e$c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/e$d;

    invoke-virtual {v1, p1}, Landroidx/room/e$d;->b([Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Landroidx/room/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/e;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public g(Landroidx/room/e$c;)V
    .locals 2

    iget-object v0, p0, Landroidx/room/e;->j:Li/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/e;->j:Li/b;

    invoke-virtual {v1, p1}, Li/b;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/e$d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/room/e;->h:Landroidx/room/e$b;

    iget-object p1, p1, Landroidx/room/e$d;->a:[I

    invoke-virtual {v0, p1}, Landroidx/room/e$b;->c([I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/room/e;->l()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroidx/room/f;

    iget-object v1, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v1}, Landroidx/room/h;->j()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p1, p2, p0, v1}, Landroidx/room/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/e;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/e;->k:Landroidx/room/f;

    return-void
.end method

.method l()V
    .locals 1

    iget-object v0, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->i()Ls0/c;

    move-result-object v0

    invoke-interface {v0}, Ls0/c;->c()Ls0/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/e;->m(Ls0/b;)V

    return-void
.end method

.method m(Ls0/b;)V
    .locals 6

    invoke-interface {p1}, Ls0/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/e;->d:Landroidx/room/h;

    invoke-virtual {v0}, Landroidx/room/h;->h()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroidx/room/e;->h:Landroidx/room/e$b;

    invoke-virtual {v1}, Landroidx/room/e$b;->a()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_1
    :try_start_3
    array-length v2, v1

    invoke-interface {p1}, Ls0/b;->m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    :try_start_4
    aget v4, v1, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v3}, Landroidx/room/e;->k(Ls0/b;I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, v3}, Landroidx/room/e;->j(Ls0/b;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ls0/b;->g0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {p1}, Ls0/b;->l()V

    iget-object v1, p0, Landroidx/room/e;->h:Landroidx/room/e$b;

    invoke-virtual {v1}, Landroidx/room/e$b;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_7
    invoke-interface {p1}, Ls0/b;->l()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    const-string p1, "ROOM"

    const-string v0, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
