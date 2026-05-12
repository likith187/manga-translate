.class public abstract Lkotlinx/coroutines/flow/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/g0;

.field private static final b:Lkotlinx/coroutines/internal/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/i;->a:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/i;->b:Lkotlinx/coroutines/internal/g0;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/f;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/h;

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/flow/internal/f;->a:Lkotlinx/coroutines/internal/g0;

    :cond_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/i;->a:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/g0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/i;->b:Lkotlinx/coroutines/internal/g0;

    return-object v0
.end method
