.class public Ld3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/e;


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Le3/p;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lz2/e;

.field private final d:Lf3/c;

.field private final e:Lg3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ly2/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld3/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lz2/e;Le3/p;Lf3/c;Lg3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ld3/c;->c:Lz2/e;

    iput-object p3, p0, Ld3/c;->a:Le3/p;

    iput-object p4, p0, Ld3/c;->d:Lf3/c;

    iput-object p5, p0, Ld3/c;->e:Lg3/b;

    return-void
.end method

.method static synthetic b(Ld3/c;Ly2/m;Ly2/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ld3/c;->d:Lf3/c;

    invoke-interface {v0, p1, p2}, Lf3/c;->C(Ly2/m;Ly2/h;)Lf3/i;

    iget-object p0, p0, Ld3/c;->a:Le3/p;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Le3/p;->a(Ly2/m;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Ld3/c;Ly2/m;Lw2/h;Ly2/h;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ld3/c;->c:Lz2/e;

    invoke-virtual {p1}, Ly2/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/e;->a(Ljava/lang/String;)Lz2/m;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Transport backend \'%s\' is not registered"

    invoke-virtual {p1}, Ly2/m;->b()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld3/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lw2/h;->a(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Lz2/m;->a(Ly2/h;)Ly2/h;

    move-result-object p3

    iget-object v0, p0, Ld3/c;->e:Lg3/b;

    invoke-static {p0, p1, p3}, Ld3/b;->a(Ld3/c;Ly2/m;Ly2/h;)Lg3/b$a;

    move-result-object p0

    invoke-interface {v0, p0}, Lg3/b;->c(Lg3/b$a;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lw2/h;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Ld3/c;->f:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error scheduling event "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lw2/h;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ly2/m;Ly2/h;Lw2/h;)V
    .locals 1

    iget-object v0, p0, Ld3/c;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p3, p2}, Ld3/a;->a(Ld3/c;Ly2/m;Lw2/h;Ly2/h;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
