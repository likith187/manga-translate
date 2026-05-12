.class public abstract Le3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/d$a;,
        Le3/d$b;,
        Le3/d$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IJ)J
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v0, 0x1

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2

    :goto_0
    const-wide v2, 0x40c3880000000000L    # 10000.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    int-to-long v4, p1

    mul-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    int-to-double p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    long-to-double p2, p2

    mul-double/2addr p0, p2

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static b()Le3/d$a;
    .locals 1

    new-instance v0, Le3/d$a;

    invoke-direct {v0}, Le3/d$a;-><init>()V

    return-object v0
.end method

.method static d(Lh3/a;Ljava/util/Map;)Le3/d;
    .locals 1

    new-instance v0, Le3/a;

    invoke-direct {v0, p0, p1}, Le3/a;-><init>(Lh3/a;Ljava/util/Map;)V

    return-object v0
.end method

.method public static f(Lh3/a;)Le3/d;
    .locals 7

    invoke-static {}, Le3/d;->b()Le3/d$a;

    move-result-object v0

    sget-object v1, Lw2/d;->DEFAULT:Lw2/d;

    invoke-static {}, Le3/d$b;->a()Le3/d$b$a;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Le3/d$b$a;->b(J)Le3/d$b$a;

    move-result-object v2

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v3, v4}, Le3/d$b$a;->d(J)Le3/d$b$a;

    move-result-object v2

    invoke-virtual {v2}, Le3/d$b$a;->a()Le3/d$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le3/d$a;->a(Lw2/d;Le3/d$b;)Le3/d$a;

    move-result-object v0

    sget-object v1, Lw2/d;->HIGHEST:Lw2/d;

    invoke-static {}, Le3/d$b;->a()Le3/d$b$a;

    move-result-object v2

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v5, v6}, Le3/d$b$a;->b(J)Le3/d$b$a;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Le3/d$b$a;->d(J)Le3/d$b$a;

    move-result-object v2

    invoke-virtual {v2}, Le3/d$b$a;->a()Le3/d$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le3/d$a;->a(Lw2/d;Le3/d$b;)Le3/d$a;

    move-result-object v0

    sget-object v1, Lw2/d;->VERY_LOW:Lw2/d;

    invoke-static {}, Le3/d$b;->a()Le3/d$b$a;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Le3/d$b$a;->b(J)Le3/d$b$a;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Le3/d$b$a;->d(J)Le3/d$b$a;

    move-result-object v2

    sget-object v3, Le3/d$c;->NETWORK_UNMETERED:Le3/d$c;

    sget-object v4, Le3/d$c;->DEVICE_IDLE:Le3/d$c;

    filled-new-array {v3, v4}, [Le3/d$c;

    move-result-object v3

    invoke-static {v3}, Le3/d;->i([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Le3/d$b$a;->c(Ljava/util/Set;)Le3/d$b$a;

    move-result-object v2

    invoke-virtual {v2}, Le3/d$b$a;->a()Le3/d$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le3/d$a;->a(Lw2/d;Le3/d$b;)Le3/d$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Le3/d$a;->c(Lh3/a;)Le3/d$a;

    move-result-object p0

    invoke-virtual {p0}, Le3/d$a;->b()Le3/d;

    move-result-object p0

    return-object p0
.end method

.method private static varargs i([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private j(Landroid/app/job/JobInfo$Builder;Ljava/util/Set;)V
    .locals 1

    sget-object p0, Le3/d$c;->NETWORK_UNMETERED:Le3/d$c;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_0
    sget-object p0, Le3/d$c;->DEVICE_CHARGING:Le3/d$c;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_1
    sget-object p0, Le3/d$c;->DEVICE_IDLE:Le3/d$c;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    :cond_2
    return-void
.end method


# virtual methods
.method public c(Landroid/app/job/JobInfo$Builder;Lw2/d;JI)Landroid/app/job/JobInfo$Builder;
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Le3/d;->g(Lw2/d;JI)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p0}, Le3/d;->h()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le3/d$b;

    invoke-virtual {p2}, Le3/d$b;->c()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Le3/d;->j(Landroid/app/job/JobInfo$Builder;Ljava/util/Set;)V

    return-object p1
.end method

.method abstract e()Lh3/a;
.end method

.method public g(Lw2/d;JI)J
    .locals 2

    invoke-virtual {p0}, Le3/d;->e()Lh3/a;

    move-result-object v0

    invoke-interface {v0}, Lh3/a;->getTime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0}, Le3/d;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le3/d$b;

    invoke-virtual {p1}, Le3/d$b;->b()J

    move-result-wide v0

    invoke-direct {p0, p4, v0, v1}, Le3/d;->a(IJ)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1}, Le3/d$b;->d()J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method abstract h()Ljava/util/Map;
.end method
