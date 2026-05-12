.class public Lp7/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/m;


# static fields
.field private static a:Landroid/content/ContentProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lp7/l;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroid/os/DeadObjectException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp7/l;->u(Landroid/os/DeadObjectException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp7/l;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lp7/l;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp7/l;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lp7/l;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lp7/l;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Landroid/os/DeadObjectException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp7/l;->o(Landroid/os/DeadObjectException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp7/l;->p(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/os/DeadObjectException;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lp7/l;->w(Landroid/os/DeadObjectException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l(Lo7/f;)Landroid/content/ContentValues;
    .locals 3

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lo7/f;->h()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "ContentProviderRecorder"

    if-nez p0, :cond_0

    new-instance p0, Lp7/c;

    invoke-direct {p0}, Lp7/c;-><init>()V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    return v1

    :cond_0
    const-string v3, "content://com.oplus.statistics.provider/track_event"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v5, Lp7/l;->a:Landroid/content/ContentProviderClient;

    if-eqz v5, :cond_1

    new-instance v5, Lp7/g;

    invoke-direct {v5, p1}, Lp7/g;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    sget-object v5, Lp7/l;->a:Landroid/content/ContentProviderClient;

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    if-nez v5, :cond_2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    sput-object v5, Lp7/l;->a:Landroid/content/ContentProviderClient;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_4

    :cond_2
    :goto_1
    if-nez v5, :cond_4

    new-instance v6, Lp7/h;

    invoke-direct {v6}, Lp7/h;-><init>()V

    invoke-static {v2, v6}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    return v1

    :cond_4
    :try_start_1
    invoke-virtual {v5, v0, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_a

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_5

    :goto_3
    if-eqz v3, :cond_5

    :try_start_2
    sput-object v4, Lp7/l;->a:Landroid/content/ContentProviderClient;

    :cond_5
    new-instance p2, Lp7/f;

    invoke-direct {p2, p0}, Lp7/f;-><init>(Ljava/lang/Exception;)V

    invoke-static {v2, p2}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_6

    if-eqz v5, :cond_6

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_6
    return v1

    :goto_4
    :try_start_3
    sget-object v7, Lp7/l;->a:Landroid/content/ContentProviderClient;

    if-eqz v7, :cond_c

    if-eqz v3, :cond_c

    new-instance v7, Lp7/i;

    invoke-direct {v7, v6}, Lp7/i;-><init>(Landroid/os/DeadObjectException;)V

    invoke-static {v2, v7}, Ls7/f;->f(Ljava/lang/String;Ls7/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-eqz v5, :cond_7

    sput-object v5, Lp7/l;->a:Landroid/content/ContentProviderClient;

    :cond_7
    if-nez v5, :cond_9

    new-instance p0, Lp7/j;

    invoke-direct {p0}, Lp7/j;-><init>()V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_8

    if-eqz v5, :cond_8

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_8
    return v1

    :cond_9
    :try_start_5
    invoke-virtual {v5, v0, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_a

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    :goto_5
    const/4 p0, 0x1

    return p0

    :catch_2
    :try_start_6
    new-instance p0, Lp7/k;

    invoke-direct {p0, v6}, Lp7/k;-><init>(Landroid/os/DeadObjectException;)V

    invoke-static {v2, p0}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V

    sput-object v4, Lp7/l;->a:Landroid/content/ContentProviderClient;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_b

    if-eqz v5, :cond_b

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_b
    return v1

    :cond_c
    :try_start_7
    new-instance p0, Lp7/d;

    invoke-direct {p0, v6}, Lp7/d;-><init>(Landroid/os/DeadObjectException;)V

    invoke-static {v2, p0}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_d

    if-eqz v5, :cond_d

    new-instance p0, Lp7/e;

    invoke-direct {p0, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_d
    return v1

    :goto_6
    if-nez v3, :cond_e

    if-eqz v5, :cond_e

    new-instance p2, Lp7/e;

    invoke-direct {p2, p1}, Lp7/e;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2}, Ls7/f;->a(Ljava/lang/String;Ls7/g;)V

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_e
    throw p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.oplus.statistics.provider/support"

    invoke-static {p0, v1, v0}, Lp7/l;->m(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance v0, Lp7/b;

    invoke-direct {v0}, Lp7/b;-><init>()V

    const-string v1, "ContentProviderRecorder"

    invoke-static {v1, v0}, Ls7/f;->f(Ljava/lang/String;Ls7/g;)V

    :cond_0
    return p0
.end method

.method private static synthetic o(Landroid/os/DeadObjectException;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert DeadObjectException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic p(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpc close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic r()Ljava/lang/String;
    .locals 1

    const-string v0, "get resolver failed."

    return-object v0
.end method

.method private static synthetic s(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " use ContentProviderClient from cache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic t()Ljava/lang/String;
    .locals 1

    const-string v0, "get provider client failed."

    return-object v0
.end method

.method private static synthetic u(Landroid/os/DeadObjectException;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert DeadObjectException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic v()Ljava/lang/String;
    .locals 1

    const-string v0, "get provider client failed."

    return-object v0
.end method

.method private static synthetic w(Landroid/os/DeadObjectException;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic x()Ljava/lang/String;
    .locals 1

    const-string v0, "not support content provider"

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lo7/f;)V
    .locals 1

    const-string v0, "content://com.oplus.statistics.provider/track_event"

    invoke-direct {p0, p2}, Lp7/l;->l(Lo7/f;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lp7/l;->m(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void
.end method
