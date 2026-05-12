.class public Lf3/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/c;
.implements Lg3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/b0$c;,
        Lf3/b0$b;,
        Lf3/b0$d;
    }
.end annotation


# static fields
.field private static final h:Lw2/b;


# instance fields
.field private final a:Lf3/h0;

.field private final b:Lh3/a;

.field private final c:Lh3/a;

.field private final f:Lf3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "proto"

    invoke-static {v0}, Lw2/b;->b(Ljava/lang/String;)Lw2/b;

    move-result-object v0

    sput-object v0, Lf3/b0;->h:Lw2/b;

    return-void
.end method

.method constructor <init>(Lh3/a;Lh3/a;Lf3/d;Lf3/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lf3/b0;->a:Lf3/h0;

    iput-object p1, p0, Lf3/b0;->b:Lh3/a;

    iput-object p2, p0, Lf3/b0;->c:Lh3/a;

    iput-object p3, p0, Lf3/b0;->f:Lf3/d;

    return-void
.end method

.method private B()J
    .locals 2

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "PRAGMA page_size"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private D(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)Ljava/lang/Long;
    .locals 11

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "backend_name = ? and priority = ?"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ly2/m;->d()Lw2/d;

    move-result-object v2

    invoke-static {v2}, Li3/a;->a(Lw2/d;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ly2/m;->c()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, " and extras = ?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly2/m;->c()[B

    move-result-object p2

    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "_id"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array p0, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "transport_contexts"

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {}, Lf3/x;->a()Lf3/b0$b;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic D0(Lf3/b0;Ly2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p2, p1}, Lf3/b0;->D(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {}, Lf3/u;->a()Lf3/b0$b;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic E0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ly2/m;->a()Ly2/m$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly2/m$a;->b(Ljava/lang/String;)Ly2/m$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Li3/a;->b(I)Lw2/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly2/m$a;->d(Lw2/d;)Ly2/m$a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf3/b0;->P0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ly2/m$a;->c([B)Ly2/m$a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/m$a;->a()Ly2/m;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic F0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {}, Lf3/t;->a()Lf3/b0$b;

    move-result-object v0

    invoke-static {p0, v0}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic G0(Lf3/b0;Ly2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p2, p1}, Lf3/b0;->N0(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lf3/b0;->O0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf3/b0;->N(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic H0(Lf3/b0;Ljava/util/List;Ly2/m;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x7

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v0, v4

    :cond_0
    invoke-static {}, Ly2/h;->a()Ly2/h$a;

    move-result-object v3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ly2/h$a;->j(Ljava/lang/String;)Ly2/h$a;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ly2/h$a;->i(J)Ly2/h$a;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ly2/h$a;->k(J)Ly2/h$a;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Ly2/g;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lf3/b0;->S0(Ljava/lang/String;)Lw2/b;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ly2/g;-><init>(Lw2/b;[B)V

    invoke-virtual {v3, v0}, Ly2/h$a;->h(Ly2/g;)Ly2/h$a;

    goto :goto_1

    :cond_1
    new-instance v0, Ly2/g;

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lf3/b0;->S0(Ljava/lang/String;)Lw2/b;

    move-result-object v4

    invoke-direct {p0, v1, v2}, Lf3/b0;->Q0(J)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ly2/g;-><init>(Lw2/b;[B)V

    invoke-virtual {v3, v0}, Ly2/h$a;->h(Ly2/g;)Ly2/h$a;

    :goto_1
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ly2/h$a;->g(Ljava/lang/Integer;)Ly2/h$a;

    :cond_2
    invoke-virtual {v3}, Ly2/h$a;->d()Ly2/h;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Lf3/i;->a(JLy2/m;Ly2/h;)Lf3/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private I()Z
    .locals 4

    invoke-direct {p0}, Lf3/b0;->x()J

    move-result-wide v0

    invoke-direct {p0}, Lf3/b0;->B()J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-object p0, p0, Lf3/b0;->f:Lf3/d;

    invoke-virtual {p0}, Lf3/d;->f()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic I0(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Lf3/b0$c;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lf3/b0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lf3/b0$a;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic J0(Lf3/b0;Ly2/m;Ly2/h;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 10

    invoke-direct {p0}, Lf3/b0;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p3, p1}, Lf3/b0;->k(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)J

    move-result-wide v0

    iget-object p0, p0, Lf3/b0;->f:Lf3/d;

    invoke-virtual {p0}, Lf3/d;->e()I

    move-result p0

    invoke-virtual {p2}, Ly2/h;->e()Ly2/g;

    move-result-object p1

    invoke-virtual {p1}, Ly2/g;->a()[B

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, p0, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "context_id"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "transport_name"

    invoke-virtual {p2}, Ly2/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ly2/h;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp_ms"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Ly2/h;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uptime_ms"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Ly2/h;->e()Ly2/g;

    move-result-object v0

    invoke-virtual {v0}, Ly2/g;->b()Lw2/b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload_encoding"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {p2}, Ly2/h;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "num_attempts"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v2, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    new-array v0, v3, [B

    :goto_1
    const-string v1, "payload"

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-string v0, "event_id"

    if-nez v2, :cond_3

    array-length v2, p1

    int-to-double v2, v2

    int-to-double v7, p0

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_2
    if-gt v4, v2, :cond_3

    add-int/lit8 v3, v4, -0x1

    mul-int/2addr v3, p0

    mul-int v7, v4, p0

    array-length v8, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "sequence_num"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "bytes"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "event_payloads"

    invoke-virtual {p3, v3, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ly2/h;->i()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "value"

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "event_metadata"

    invoke-virtual {p3, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K0(Landroid/database/Cursor;)[B
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-array p0, v2, [B

    move v2, v1

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static synthetic L0(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const-string p0, "DELETE FROM events WHERE num_attempts >= 16"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic M0(JLy2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "next_request_ms"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p2}, Ly2/m;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ly2/m;->d()Lw2/d;

    move-result-object p1

    invoke-static {p1}, Li3/a;->a(Lw2/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "transport_contexts"

    const-string v1, "backend_name = ? and priority = ?"

    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    const-string p0, "backend_name"

    invoke-virtual {p2}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ly2/m;->d()Lw2/d;

    move-result-object p0

    invoke-static {p0}, Li3/a;->a(Lw2/d;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v2
.end method

.method private N(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/i;

    invoke-virtual {v0}, Lf3/i;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lf3/i;->b()Ly2/h;

    move-result-object v1

    invoke-virtual {v1}, Ly2/h;->l()Ly2/h$a;

    move-result-object v1

    invoke-virtual {v0}, Lf3/i;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf3/b0$c;

    iget-object v4, v3, Lf3/b0$c;->a:Ljava/lang/String;

    iget-object v3, v3, Lf3/b0$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ly2/h$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/h$a;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lf3/i;->c()J

    move-result-wide v2

    invoke-virtual {v0}, Lf3/i;->d()Ly2/m;

    move-result-object v0

    invoke-virtual {v1}, Ly2/h$a;->d()Ly2/h;

    move-result-object v1

    invoke-static {v2, v3, v0, v1}, Lf3/i;->a(JLy2/m;Ly2/h;)Lf3/i;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private N0(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p2}, Lf3/b0;->D(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v9, "code"

    const-string v10, "inline"

    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lf3/b0;->f:Lf3/d;

    invoke-virtual {v2}, Lf3/d;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const-string v12, "events"

    const-string v14, "context_id = ?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-static {v0, v1, v3}, Lf3/n;->a(Lf3/b0;Ljava/util/List;Ly2/m;)Lf3/b0$b;

    move-result-object v0

    invoke-static {v2, v0}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    return-object v1
.end method

.method private O0(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 11

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event_id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf3/i;

    invoke-virtual {v2}, Lf3/i;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "name"

    const-string v1, "value"

    const-string v2, "event_id"

    filled-new-array {v2, p2, v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "event_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p0}, Lf3/p;->a(Ljava/util/Map;)Lf3/b0$b;

    move-result-object p2

    invoke-static {p1, p2}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    return-object p0
.end method

.method private static P0(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private Q0(J)[B
    .locals 8

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "bytes"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "sequence_num"

    const-string v1, "event_payloads"

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {}, Lf3/o;->a()Lf3/b0$b;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method private R0(Lf3/b0$d;Lf3/b0$b;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lf3/b0;->c:Lh3/a;

    invoke-interface {v0}, Lh3/a;->getTime()J

    move-result-wide v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lf3/b0$d;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lf3/b0;->c:Lh3/a;

    invoke-interface {v3}, Lh3/a;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lf3/b0;->f:Lf3/d;

    invoke-virtual {v5}, Lf3/d;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    invoke-interface {p2, v2}, Lf3/b0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method private static S0(Ljava/lang/String;)Lw2/b;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lf3/b0;->h:Lw2/b;

    return-object p0

    :cond_0
    invoke-static {p0}, Lw2/b;->b(Ljava/lang/String;)Lw2/b;

    move-result-object p0

    return-object p0
.end method

.method private static T0(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/i;

    invoke-virtual {v1}, Lf3/i;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-interface {p1, p0}, Lf3/b0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method static synthetic X(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const-string p1, "events"

    const-string v0, "timestamp_ms < ?"

    invoke-virtual {p2, p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b0(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg3/a;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Lg3/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {p1}, Lf3/q;->b(Landroid/database/sqlite/SQLiteDatabase;)Lf3/b0$d;

    move-result-object p1

    invoke-static {}, Lf3/r;->a()Lf3/b0$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lf3/b0;->R0(Lf3/b0$d;Lf3/b0$b;)Ljava/lang/Object;

    return-void
.end method

.method private k(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)J
    .locals 3

    invoke-direct {p0, p1, p2}, Lf3/b0;->D(Landroid/database/sqlite/SQLiteDatabase;Ly2/m;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backend_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ly2/m;->d()Lw2/d;

    move-result-object v0

    invoke-static {v0}, Li3/a;->a(Lw2/d;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "priority"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "next_request_ms"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2}, Ly2/m;->c()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ly2/m;->c()[B

    move-result-object p2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v0, "extras"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p2, "transport_contexts"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic q0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    new-instance v0, Lg3/a;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Lg3/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic v0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private x()J
    .locals 2

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "PRAGMA page_count"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic x0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C(Ly2/m;Ly2/h;)Lf3/i;
    .locals 4

    invoke-virtual {p1}, Ly2/m;->d()Lw2/d;

    move-result-object v0

    invoke-virtual {p2}, Ly2/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    invoke-static {v1, v2, v0}, Lb3/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lf3/w;->a(Lf3/b0;Ly2/m;Ly2/h;)Lf3/b0$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, v1, p1, p2}, Lf3/i;->a(JLy2/m;Ly2/h;)Lf3/i;

    move-result-object p0

    return-object p0
.end method

.method G(Lf3/b0$b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, p0}, Lf3/b0$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public Y()Ljava/lang/Iterable;
    .locals 1

    invoke-static {}, Lf3/l;->a()Lf3/b0$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public c(Lg3/b$a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lf3/b0;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    invoke-interface {p1}, Lg3/b$a;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public c0(Ly2/m;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0, p1}, Lf3/k;->a(Lf3/b0;Ly2/m;)Lf3/b0$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lf3/b0;->a:Lf3/h0;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public m0(Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lf3/b0;->T0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf3/y;->a(Ljava/lang/String;)Lf3/b0$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    return-void
.end method

.method public n()I
    .locals 4

    iget-object v0, p0, Lf3/b0;->b:Lh3/a;

    invoke-interface {v0}, Lh3/a;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lf3/b0;->f:Lf3/d;

    invoke-virtual {v2}, Lf3/d;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lf3/m;->a(J)Lf3/b0$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public o(Ly2/m;)J
    .locals 1

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p1}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ly2/m;->d()Lw2/d;

    move-result-object p1

    invoke-static {p1}, Li3/a;->a(Lw2/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {}, Lf3/z;->a()Lf3/b0$b;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/b0;->U0(Landroid/database/Cursor;Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public o0(Ly2/m;)Z
    .locals 0

    invoke-static {p0, p1}, Lf3/a0;->a(Lf3/b0;Ly2/m;)Lf3/b0$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public q(Ljava/lang/Iterable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lf3/b0;->T0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lf3/b0;->v()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public s0(Ly2/m;J)V
    .locals 0

    invoke-static {p2, p3, p1}, Lf3/j;->a(JLy2/m;)Lf3/b0$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf3/b0;->G(Lf3/b0$b;)Ljava/lang/Object;

    return-void
.end method

.method v()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-object v0, p0, Lf3/b0;->a:Lf3/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lf3/s;->b(Lf3/h0;)Lf3/b0$d;

    move-result-object v0

    invoke-static {}, Lf3/v;->a()Lf3/b0$b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lf3/b0;->R0(Lf3/b0$d;Lf3/b0$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method
