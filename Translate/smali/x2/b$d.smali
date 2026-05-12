.class final Lx2/b$d;
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
    name = "d"
.end annotation


# static fields
.field static final a:Lx2/b$d;

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

    new-instance v0, Lx2/b$d;

    invoke-direct {v0}, Lx2/b$d;-><init>()V

    sput-object v0, Lx2/b$d;->a:Lx2/b$d;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->b:Lq4/c;

    const-string v0, "eventCode"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->c:Lq4/c;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->d:Lq4/c;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->e:Lq4/c;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->f:Lq4/c;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->g:Lq4/c;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$d;->h:Lq4/c;

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

    check-cast p1, Lx2/l;

    check-cast p2, Lq4/e;

    invoke-virtual {p0, p1, p2}, Lx2/b$d;->b(Lx2/l;Lq4/e;)V

    return-void
.end method

.method public b(Lx2/l;Lq4/e;)V
    .locals 2

    sget-object p0, Lx2/b$d;->b:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->c()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lq4/e;->a(Lq4/c;J)Lq4/e;

    sget-object p0, Lx2/b$d;->c:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$d;->d:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->d()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lq4/e;->a(Lq4/c;J)Lq4/e;

    sget-object p0, Lx2/b$d;->e:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->f()[B

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$d;->f:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$d;->g:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->h()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Lq4/e;->a(Lq4/c;J)Lq4/e;

    sget-object p0, Lx2/b$d;->h:Lq4/c;

    invoke-virtual {p1}, Lx2/l;->e()Lx2/o;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
