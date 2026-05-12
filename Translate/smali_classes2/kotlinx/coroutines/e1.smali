.class final Lkotlinx/coroutines/e1;
.super Lkotlinx/coroutines/l1;
.source "SourceFile"


# instance fields
.field private final h:Lkotlinx/coroutines/c1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/c1;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/l1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/e1;->h:Lkotlinx/coroutines/c1;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/e1;->h:Lkotlinx/coroutines/c1;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/c1;->b(Ljava/lang/Throwable;)V

    return-void
.end method
