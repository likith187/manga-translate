.class final synthetic Lkotlinx/coroutines/flow/internal/h$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Lw8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/flow/internal/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/h$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/h$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/h$a;->INSTANCE:Lkotlinx/coroutines/flow/internal/h$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lkotlinx/coroutines/flow/c;

    const-string v3, "emit"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/o;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/internal/h$a;->invoke(Lkotlinx/coroutines/flow/c;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/c;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
