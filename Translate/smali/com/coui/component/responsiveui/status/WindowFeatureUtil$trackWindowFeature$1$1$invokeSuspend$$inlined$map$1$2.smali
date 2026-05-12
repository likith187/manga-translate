.class public final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/c;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/c;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;->a:Lkotlinx/coroutines/flow/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;

    iget v1, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;-><init>(Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;->a:Lkotlinx/coroutines/flow/c;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->a()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/window/layout/FoldingFeature;

    if-eqz v5, :cond_3

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/coui/component/responsiveui/status/WindowFeature;

    invoke-direct {v2, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeature;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput v3, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
