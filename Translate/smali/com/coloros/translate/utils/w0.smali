.class public final Lcom/coloros/translate/utils/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/w0;

.field private static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/utils/w0;

    invoke-direct {v0}, Lcom/coloros/translate/utils/w0;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/w0;->INSTANCE:Lcom/coloros/translate/utils/w0;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/w0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/translate/utils/w0;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/w0;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public final b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/w0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method
