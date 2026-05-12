.class public final Lkotlinx/coroutines/m1$c;
.super Lkotlinx/coroutines/internal/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/m1;->j(Ljava/lang/Object;Lkotlinx/coroutines/q1;Lkotlinx/coroutines/l1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lkotlinx/coroutines/m1;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/r;Lkotlinx/coroutines/m1;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/m1$c;->d:Lkotlinx/coroutines/m1;

    iput-object p3, p0, Lkotlinx/coroutines/m1$c;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/r$a;-><init>(Lkotlinx/coroutines/internal/r;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/r;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/m1$c;->g(Lkotlinx/coroutines/internal/r;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public g(Lkotlinx/coroutines/internal/r;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/m1$c;->d:Lkotlinx/coroutines/m1;

    invoke-virtual {p1}, Lkotlinx/coroutines/m1;->H()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/m1$c;->e:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/internal/q;->a()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
