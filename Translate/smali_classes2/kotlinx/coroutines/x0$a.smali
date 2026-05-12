.class public final Lkotlinx/coroutines/x0$a;
.super Lkotlin/coroutines/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlinx/coroutines/y;->b:Lkotlinx/coroutines/y$a;

    .line 3
    sget-object v1, Lkotlinx/coroutines/x0$a$a;->INSTANCE:Lkotlinx/coroutines/x0$a$a;

    .line 4
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/g$c;Lw8/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x0$a;-><init>()V

    return-void
.end method
