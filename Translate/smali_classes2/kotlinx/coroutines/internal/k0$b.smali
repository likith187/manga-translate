.class final Lkotlinx/coroutines/internal/k0$b;
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
.field public static final INSTANCE:Lkotlinx/coroutines/internal/k0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/k0$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/k0$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/k0$b;->INSTANCE:Lkotlinx/coroutines/internal/k0$b;

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
    check-cast p1, Lkotlinx/coroutines/y1;

    check-cast p2, Lkotlin/coroutines/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/k0$b;->invoke(Lkotlinx/coroutines/y1;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/y1;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/y1;Lkotlin/coroutines/g$b;)Lkotlinx/coroutines/y1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y1;",
            "Lkotlin/coroutines/g$b;",
            ")",
            "Lkotlinx/coroutines/y1;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of p0, p2, Lkotlinx/coroutines/y1;

    if-eqz p0, :cond_1

    check-cast p2, Lkotlinx/coroutines/y1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
