.class public Lw5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw5/c$b;
    }
.end annotation


# static fields
.field private static volatile c:Lw5/c; = null

.field private static d:Z = true

.field private static e:Z = false


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw5/c;->a:Z

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lw5/c;->e:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lw5/c;->e:Z

    return p0
.end method

.method static synthetic c(Lw5/c;)Z
    .locals 0

    invoke-direct {p0}, Lw5/c;->d()Z

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 2

    iget-object p0, p0, Lw5/c;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oplus_appplatform_debug"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static e()Lw5/c;
    .locals 2

    sget-object v0, Lw5/c;->c:Lw5/c;

    if-nez v0, :cond_1

    const-class v0, Lw5/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw5/c;->c:Lw5/c;

    if-nez v1, :cond_0

    new-instance v1, Lw5/c;

    invoke-direct {v1}, Lw5/c;-><init>()V

    sput-object v1, Lw5/c;->c:Lw5/c;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lw5/c;->c:Lw5/c;

    return-object v0
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lw5/c;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw5/c;->a:Z

    const-string v1, "ro.build.release_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lw5/c;->d:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lw5/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lw5/c;->d()Z

    move-result v0

    sput-boolean v0, Lw5/c;->e:Z

    const-string v0, "oplus_appplatform_debug"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Lw5/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw5/c$b;-><init>(Lw5/c;Lw5/c$a;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Current MODE is debug mode : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lw5/c;->e:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw5/d;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public g()Z
    .locals 0

    sget-boolean p0, Lw5/c;->d:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lw5/c;->e:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
