.class Ll8/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field d:Ll8/d$c;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ll8/d$c;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ll8/d$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ll8/d$b;->d:Ll8/d$c;

    .line 5
    invoke-static {p2, p1}, Ll8/d$c;->a(Ll8/d$c;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ll8/d$b;->b:J

    iput-wide p1, p0, Ll8/d$b;->c:J

    .line 7
    iput-object p3, p0, Ll8/d$b;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ll8/d$c;Ljava/lang/String;Ll8/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ll8/d$b;-><init>(Ljava/lang/String;Ll8/d$c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ll8/d$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ll8/d$b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ll8/d$b;)Ll8/d$c;
    .locals 0

    invoke-direct {p0}, Ll8/d$b;->e()Ll8/d$c;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Ll8/d$b;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ll8/d$b;->c:J

    sub-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Ll8/d$b;->d(Ljava/lang/String;J)V

    return-void
.end method

.method private d(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Ll8/d$b;->d:Ll8/d$c;

    iget-object v1, p0, Ll8/d$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, p3}, Ll8/d$c;->b(Ll8/d$c;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Ll8/d$b;->e:Ljava/lang/String;

    iget-object p0, p0, Ll8/d$b;->a:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s/%s, %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ll8/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Ll8/d$c;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ll8/d$b;->b:J

    sub-long/2addr v0, v2

    const-string v2, "total"

    invoke-direct {p0, v2, v0, v1}, Ll8/d$b;->d(Ljava/lang/String;J)V

    iget-object p0, p0, Ll8/d$b;->d:Ll8/d$c;

    return-object p0
.end method
