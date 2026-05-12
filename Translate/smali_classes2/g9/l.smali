.class public abstract Lg9/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:J

.field public static final c:I

.field public static final d:I

.field public static final e:J

.field public static f:Lg9/g;

.field public static final g:Lg9/i;

.field public static final h:Lg9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.default.name"

    const-string v1, "DefaultDispatcher"

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/h0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg9/l;->a:Ljava/lang/String;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v2, 0x186a0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/h0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lg9/l;->b:J

    invoke-static {}, Lkotlinx/coroutines/internal/h0;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb9/d;->c(II)I

    move-result v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lg9/l;->c:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    const v2, 0x1ffffe

    const/4 v3, 0x0

    const v4, 0x1ffffe

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lg9/l;->d:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/h0;->h(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lg9/l;->e:J

    sget-object v0, Lg9/e;->INSTANCE:Lg9/e;

    sput-object v0, Lg9/l;->f:Lg9/g;

    new-instance v0, Lg9/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg9/j;-><init>(I)V

    sput-object v0, Lg9/l;->g:Lg9/i;

    new-instance v0, Lg9/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg9/j;-><init>(I)V

    sput-object v0, Lg9/l;->h:Lg9/i;

    return-void
.end method
