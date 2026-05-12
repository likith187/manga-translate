.class public Lx9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/concurrent/ExecutorService;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/util/concurrent/ExecutorService;

.field j:Ljava/util/List;

.field k:Lx9/g;

.field l:Lx9/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lx9/d;->m:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9/d;->a:Z

    iput-boolean v0, p0, Lx9/d;->b:Z

    iput-boolean v0, p0, Lx9/d;->c:Z

    iput-boolean v0, p0, Lx9/d;->d:Z

    iput-boolean v0, p0, Lx9/d;->f:Z

    sget-object v0, Lx9/d;->m:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lx9/d;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method a()Lx9/g;
    .locals 0

    iget-object p0, p0, Lx9/d;->k:Lx9/g;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lx9/g$a;->a()Lx9/g;

    move-result-object p0

    return-object p0
.end method

.method b()Lx9/h;
    .locals 0

    iget-object p0, p0, Lx9/d;->l:Lx9/h;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ly9/a;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Ly9/a;->b()Ly9/a;

    move-result-object p0

    iget-object p0, p0, Ly9/a;->b:Lx9/h;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
