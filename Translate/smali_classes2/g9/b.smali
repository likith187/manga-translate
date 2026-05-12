.class public final Lg9/b;
.super Lkotlinx/coroutines/x0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final INSTANCE:Lg9/b;

.field private static final f:Lkotlinx/coroutines/y;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lg9/b;

    invoke-direct {v0}, Lg9/b;-><init>()V

    sput-object v0, Lg9/b;->INSTANCE:Lg9/b;

    sget-object v0, Lg9/m;->INSTANCE:Lg9/m;

    const/16 v1, 0x40

    invoke-static {}, Lkotlinx/coroutines/internal/h0;->a()I

    move-result v2

    invoke-static {v1, v2}, Lb9/d;->c(II)I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/internal/h0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lg9/m;->E0(I)Lkotlinx/coroutines/y;

    move-result-object v0

    sput-object v0, Lg9/b;->f:Lkotlinx/coroutines/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    invoke-virtual {p0, v0, p1}, Lg9/b;->x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method

.method public x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lg9/b;->f:Lkotlinx/coroutines/y;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/y;->x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    return-void
.end method
