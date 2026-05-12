.class final Lkotlinx/coroutines/u1;
.super Lkotlinx/coroutines/l1;
.source "SourceFile"


# instance fields
.field private final h:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/l1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/u1;->h:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/u1;->h:Lkotlin/coroutines/d;

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
