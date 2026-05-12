.class public final Lcom/coloros/translate/screen/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/q;

.field private static a:Landroid/os/Handler;

.field private static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final c:Ljava/util/concurrent/ExecutorService;

.field private static final d:Ln8/j;

.field private static final e:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/utils/q;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/q;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/q;->INSTANCE:Lcom/coloros/translate/screen/utils/q;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/translate/screen/utils/q;->a:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/q;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/q;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Lcom/coloros/translate/screen/utils/q$a;->INSTANCE:Lcom/coloros/translate/screen/utils/q$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/q;->d:Ln8/j;

    sget-object v0, Lcom/coloros/translate/screen/utils/q$b;->INSTANCE:Lcom/coloros/translate/screen/utils/q$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/q;->e:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/HandlerThread;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/q;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/HandlerThread;

    return-object p0
.end method

.method public final b()Ljava/util/concurrent/ExecutorService;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/q;->c:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
