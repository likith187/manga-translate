.class final Lkotlinx/coroutines/internal/k0$c;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/k0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/k0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/k0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/k0$c;->INSTANCE:Lkotlinx/coroutines/internal/k0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/o0;

    check-cast p2, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/k0$c;->invoke(Lkotlinx/coroutines/internal/o0;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/internal/o0;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/internal/o0;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/internal/o0;
    .locals 0

    .line 2
    instance-of p0, p2, Lkotlinx/coroutines/y1;

    if-eqz p0, :cond_0

    .line 3
    check-cast p2, Lkotlinx/coroutines/y1;

    iget-object p0, p1, Lkotlinx/coroutines/internal/o0;->a:Lkotlin/coroutines/g;

    invoke-interface {p2, p0}, Lkotlinx/coroutines/y1;->q0(Lkotlin/coroutines/g;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lkotlinx/coroutines/internal/o0;->a(Lkotlinx/coroutines/y1;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
