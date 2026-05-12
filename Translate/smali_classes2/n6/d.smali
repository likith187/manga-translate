.class public abstract Ln6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ln6/d;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln6/d;->a:Ljava/lang/String;

    invoke-static {}, Ln6/d;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln6/d;->b:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ln6/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform"

    return-object v0

    :cond_0
    invoke-static {}, Ln6/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ln6/e;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ln6/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform.dispatcher"

    return-object v0

    :cond_0
    invoke-static {}, Ln6/d;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ln6/e;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static f(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/oplus/os/OplusBuild;->getOplusOSVERSION()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get OsVersion Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VersionUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static g()Z
    .locals 1

    const/16 v0, 0x16

    invoke-static {v0}, Ln6/d;->f(I)Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
