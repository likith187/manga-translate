.class public abstract Lkotlinx/coroutines/flow/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lw8/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/flow/internal/h$a;->INSTANCE:Lkotlinx/coroutines/flow/internal/h$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i0;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw8/q;

    sput-object v0, Lkotlinx/coroutines/flow/internal/h;->a:Lw8/q;

    return-void
.end method

.method public static final synthetic a()Lw8/q;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/internal/h;->a:Lw8/q;

    return-object v0
.end method
