.class public abstract Lkotlinx/coroutines/sync/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/g0;

.field private static final b:Lkotlinx/coroutines/internal/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/c;->a:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "ALREADY_LOCKED_BY_OWNER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/c;->b:Lkotlinx/coroutines/internal/g0;

    return-void
.end method

.method public static final a(Z)Lkotlinx/coroutines/sync/a;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/sync/b;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/b;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/sync/c;->a(Z)Lkotlinx/coroutines/sync/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/c;->a:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method
