.class final Lx5/c$a$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/c$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lx5/c$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx5/c$a$a;

    invoke-direct {v0}, Lx5/c$a$a;-><init>()V

    sput-object v0, Lx5/c$a$a;->INSTANCE:Lx5/c$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx5/c$a$a;->invoke()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 2
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p0
.end method
