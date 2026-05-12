.class public abstract Lkotlinx/coroutines/sync/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Lkotlinx/coroutines/internal/g0;

.field private static final c:Lkotlinx/coroutines/internal/g0;

.field private static final d:Lkotlinx/coroutines/internal/g0;

.field private static final e:Lkotlinx/coroutines/internal/g0;

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/e;->a:I

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/e;->b:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/e;->c:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/e;->d:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/e;->e:Lkotlinx/coroutines/internal/g0;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/e;->f:I

    return-void
.end method

.method public static final synthetic a(JLkotlinx/coroutines/sync/f;)Lkotlinx/coroutines/sync/f;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/sync/e;->h(JLkotlinx/coroutines/sync/f;)Lkotlinx/coroutines/sync/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/e;->d:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/e;->e:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Lkotlinx/coroutines/sync/e;->a:I

    return v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/e;->b:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lkotlinx/coroutines/sync/e;->f:I

    return v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/e;->c:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method private static final h(JLkotlinx/coroutines/sync/f;)Lkotlinx/coroutines/sync/f;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/sync/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlinx/coroutines/sync/f;-><init>(JLkotlinx/coroutines/sync/f;I)V

    return-object v0
.end method
