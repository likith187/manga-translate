.class Lkotlinx/coroutines/v1;
.super Lkotlinx/coroutines/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/g;ZZ)V

    return-void
.end method


# virtual methods
.method protected L(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/coroutines/a0;->a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
