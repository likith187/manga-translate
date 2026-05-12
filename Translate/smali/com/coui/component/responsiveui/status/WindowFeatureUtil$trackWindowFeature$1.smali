.class final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->trackWindowFeature(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Lw8/p;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1"
    f = "WindowFeatureUtil.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $action:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activity:Landroidx/activity/ComponentActivity;

.field label:I


# direct methods
.method constructor <init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$activity:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$action:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;

    iget-object v0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$activity:Landroidx/activity/ComponentActivity;

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$action:Ljava/util/function/Consumer;

    invoke-direct {p1, v0, p0, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;-><init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/c0;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$activity:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    const-string v1, "activity.lifecycle"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/l$b;->STARTED:Landroidx/lifecycle/l$b;

    new-instance v3, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;

    iget-object v4, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$activity:Landroidx/activity/ComponentActivity;

    iget-object v5, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->$action:Ljava/util/function/Consumer;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;-><init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Lkotlin/coroutines/d;)V

    iput v2, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->label:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/g0;->a(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
