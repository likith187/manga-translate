.class public abstract Lkotlinx/coroutines/flow/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/g0;

.field public static final b:Lkotlinx/coroutines/internal/g0;

.field public static final c:Lkotlinx/coroutines/internal/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/f;->a:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/f;->b:Lkotlinx/coroutines/internal/g0;

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/flow/internal/f;->c:Lkotlinx/coroutines/internal/g0;

    return-void
.end method
