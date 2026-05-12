.class public abstract Lcom/oplus/tingle/ipc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/oplus/tingle/ipc/e;->b:Landroid/app/Application;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/oplus/tingle/ipc/e;->b:Landroid/app/Application;

    :goto_0
    invoke-static {}, Lcom/oplus/tingle/ipc/e;->b()V

    return-void
.end method

.method private static b()V
    .locals 2

    sget-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    new-instance v1, Lw7/a;

    invoke-direct {v1}, Lw7/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    new-instance v1, Lz7/a;

    invoke-direct {v1}, Lz7/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    new-instance v1, Lw7/b;

    invoke-direct {v1}, Lw7/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    new-instance v1, La8/a;

    invoke-direct {v1}, La8/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    new-instance v1, Ly7/a;

    invoke-direct {v1}, Ly7/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/oplus/tingle/ipc/e;->a:Ljava/util/List;

    new-instance v1, Lx7/a;

    invoke-direct {v1}, Lx7/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
