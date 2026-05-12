.class public final Lcom/coloros/translate/screen/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/t;

.field private static final a:Ln8/j;

.field private static final b:Ln8/j;

.field private static final c:Ln8/j;

.field private static final d:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/t;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/t;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/t;->INSTANCE:Lcom/coloros/translate/screen/utils/t;

    sget-object v0, Lcom/coloros/translate/screen/utils/t$d;->INSTANCE:Lcom/coloros/translate/screen/utils/t$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/t;->a:Ln8/j;

    sget-object v0, Lcom/coloros/translate/screen/utils/t$c;->INSTANCE:Lcom/coloros/translate/screen/utils/t$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/t;->b:Ln8/j;

    sget-object v0, Lcom/coloros/translate/screen/utils/t$a;->INSTANCE:Lcom/coloros/translate/screen/utils/t$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/t;->c:Ln8/j;

    sget-object v0, Lcom/coloros/translate/screen/utils/t$b;->INSTANCE:Lcom/coloros/translate/screen/utils/t$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/t;->d:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/screen/utils/t;)Landroid/os/HandlerThread;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/utils/t;->e()Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method private final e()Landroid/os/HandlerThread;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/t;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static final f(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/utils/t;->INSTANCE:Lcom/coloros/translate/screen/utils/t;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/t;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final g(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/utils/t;->INSTANCE:Lcom/coloros/translate/screen/utils/t;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/t;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final h(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/utils/t;->INSTANCE:Lcom/coloros/translate/screen/utils/t;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/t;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final i(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/utils/t;->INSTANCE:Lcom/coloros/translate/screen/utils/t;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/t;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final b()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/t;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final c()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/t;->d:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final d()Landroid/os/Looper;
    .locals 1

    sget-object p0, Lcom/coloros/translate/screen/utils/t;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method
