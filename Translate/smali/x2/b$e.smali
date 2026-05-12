.class final Lx2/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final a:Lx2/b$e;

.field private static final b:Lq4/c;

.field private static final c:Lq4/c;

.field private static final d:Lq4/c;

.field private static final e:Lq4/c;

.field private static final f:Lq4/c;

.field private static final g:Lq4/c;

.field private static final h:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/b$e;

    invoke-direct {v0}, Lx2/b$e;-><init>()V

    sput-object v0, Lx2/b$e;->a:Lx2/b$e;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->b:Lq4/c;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->c:Lq4/c;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->d:Lq4/c;

    const-string v0, "logSource"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->e:Lq4/c;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->f:Lq4/c;

    const-string v0, "logEvent"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->g:Lq4/c;

    const-string v0, "qosTier"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$e;->h:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lx2/m;

    check-cast p2, Lq4/e;

    invoke-virtual {p0, p1, p2}, Lx2/b$e;->b(Lx2/m;Lq4/e;)V

    return-void
.end method

.method public b(Lx2/m;Lq4/e;)V
    .locals 2

    sget-object p0, Lx2/b$e;->b:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->g()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lq4/e;->a(Lq4/c;J)Lq4/e;

    sget-object p0, Lx2/b$e;->c:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->h()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lq4/e;->a(Lq4/c;J)Lq4/e;

    sget-object p0, Lx2/b$e;->d:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->b()Lx2/k;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$e;->e:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$e;->f:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$e;->g:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$e;->h:Lq4/c;

    invoke-virtual {p1}, Lx2/m;->f()Lx2/p;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
