.class public abstract Lkotlinx/coroutines/internal/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/g0;

.field private static final b:Lw8/p;

.field private static final c:Lw8/p;

.field private static final d:Lw8/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/g0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/g0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/k0;->a:Lkotlinx/coroutines/internal/g0;

    sget-object v0, Lkotlinx/coroutines/internal/k0$a;->INSTANCE:Lkotlinx/coroutines/internal/k0$a;

    sput-object v0, Lkotlinx/coroutines/internal/k0;->b:Lw8/p;

    sget-object v0, Lkotlinx/coroutines/internal/k0$b;->INSTANCE:Lkotlinx/coroutines/internal/k0$b;

    sput-object v0, Lkotlinx/coroutines/internal/k0;->c:Lw8/p;

    sget-object v0, Lkotlinx/coroutines/internal/k0$c;->INSTANCE:Lkotlinx/coroutines/internal/k0$c;

    sput-object v0, Lkotlinx/coroutines/internal/k0;->d:Lw8/p;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/g;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/k0;->a:Lkotlinx/coroutines/internal/g0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/o0;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/internal/o0;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/o0;->b(Lkotlin/coroutines/g;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lkotlinx/coroutines/internal/k0;->c:Lw8/p;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/y1;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/y1;->D(Lkotlin/coroutines/g;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lkotlin/coroutines/g;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/k0;->b:Lw8/p;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/k0;->b(Lkotlin/coroutines/g;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/k0;->a:Lkotlinx/coroutines/internal/g0;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/o0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/o0;-><init>(Lkotlin/coroutines/g;I)V

    sget-object p1, Lkotlinx/coroutines/internal/k0;->d:Lw8/p;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/g;->fold(Ljava/lang/Object;Lw8/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/y1;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/y1;->q0(Lkotlin/coroutines/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
