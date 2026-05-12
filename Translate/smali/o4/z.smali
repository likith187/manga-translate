.class Lo4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# static fields
.field private static final c:Lu4/a;

.field private static final d:Lu4/b;


# instance fields
.field private a:Lu4/a;

.field private volatile b:Lu4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo4/x;->b()Lu4/a;

    move-result-object v0

    sput-object v0, Lo4/z;->c:Lu4/a;

    invoke-static {}, Lo4/y;->a()Lu4/b;

    move-result-object v0

    sput-object v0, Lo4/z;->d:Lu4/b;

    return-void
.end method

.method private constructor <init>(Lu4/a;Lu4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/z;->a:Lu4/a;

    iput-object p2, p0, Lo4/z;->b:Lu4/b;

    return-void
.end method

.method static a()Lo4/z;
    .locals 3

    new-instance v0, Lo4/z;

    sget-object v1, Lo4/z;->c:Lu4/a;

    sget-object v2, Lo4/z;->d:Lu4/b;

    invoke-direct {v0, v1, v2}, Lo4/z;-><init>(Lu4/a;Lu4/b;)V

    return-object v0
.end method

.method static synthetic b(Lu4/b;)V
    .locals 0

    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method d(Lu4/b;)V
    .locals 2

    iget-object v0, p0, Lo4/z;->b:Lu4/b;

    sget-object v1, Lo4/z;->d:Lu4/b;

    if-ne v0, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo4/z;->a:Lu4/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lo4/z;->a:Lu4/a;

    iput-object p1, p0, Lo4/z;->b:Lu4/b;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lu4/a;->a(Lu4/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "provide() can be called only once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo4/z;->b:Lu4/b;

    invoke-interface {p0}, Lu4/b;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
