.class public Lr7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/d$b;,
        Lr7/d$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lr7/d;->a:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lr7/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr7/d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lr7/d;Landroid/content/Context;Lo7/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr7/d;->g(Landroid/content/Context;Lo7/c;)V

    return-void
.end method

.method public static synthetic b(Lr7/d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lr7/d;->h(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lr7/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lr7/d;
    .locals 1

    invoke-static {}, Lr7/d$c;->a()Lr7/d;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic f()Ljava/lang/String;
    .locals 1

    const-string v0, "context is empty."

    return-object v0
.end method

.method private synthetic g(Landroid/content/Context;Lo7/c;)V
    .locals 2

    invoke-virtual {p2}, Lo7/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lo7/c;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lo7/c;->m()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lr7/d;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic h(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr7/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method private i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lr7/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/d$b;

    if-nez v1, :cond_0

    new-instance v1, Lr7/d$b;

    invoke-direct {v1, p2, p3, p4}, Lr7/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lr7/d$b;->e()I

    iget-object p2, p0, Lr7/d;->a:Ljava/util/Map;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lr7/d$b;->e()I

    :goto_0
    iget p2, p0, Lr7/d;->b:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lr7/d;->b:I

    int-to-long v0, p2

    const-wide/16 v2, 0x64

    cmp-long p4, v0, v2

    if-ltz p4, :cond_1

    invoke-virtual {p0, p1}, Lr7/d;->d(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    invoke-static {}, Lr7/h;->c()Lr7/h;

    move-result-object p2

    invoke-virtual {p2, p3}, Lr7/h;->d(I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lr7/h;->c()Lr7/h;

    move-result-object p2

    new-instance p4, Lr7/c;

    invoke-direct {p4, p0, p1}, Lr7/c;-><init>(Lr7/d;Landroid/content/Context;)V

    const-wide/32 p0, 0x493e0

    invoke-virtual {p2, p3, p4, p0, p1}, Lr7/h;->g(ILjava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lr7/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr7/d$b;

    new-instance v2, Lo7/c;

    const-string v3, "001"

    const-string v4, "chatty_event"

    const-string v5, "21000"

    invoke-direct {v2, p1, v5, v3, v4}, Lo7/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v1}, Lr7/d$b;->a(Lr7/d$b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "log_tag"

    invoke-static {v1}, Lr7/d$b;->b(Lr7/d$b;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "event_id"

    invoke-static {v1}, Lr7/d$b;->c(Lr7/d$b;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lr7/d$b;->d(Lr7/d$b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "times"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lo7/c;->q(Ljava/util/Map;)V

    invoke-static {p1, v2}, Ln7/e;->c(Landroid/content/Context;Lo7/c;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lr7/d;->b:I

    iget-object p0, p0, Lr7/d;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lr7/h;->c()Lr7/h;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lr7/h;->h(I)V

    return-void
.end method

.method public j(Lo7/c;)V
    .locals 2

    invoke-virtual {p1}, Lo7/f;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lr7/a;

    invoke-direct {p0}, Lr7/a;-><init>()V

    const-string p1, "ChattyEventTracker"

    invoke-static {p1, p0}, Ls7/f;->b(Ljava/lang/String;Ls7/g;)V

    return-void

    :cond_0
    new-instance v1, Lr7/b;

    invoke-direct {v1, p0, v0, p1}, Lr7/b;-><init>(Lr7/d;Landroid/content/Context;Lo7/c;)V

    invoke-static {v1}, Lr7/h;->b(Ljava/lang/Runnable;)V

    return-void
.end method
