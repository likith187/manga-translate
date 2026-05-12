.class public final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/b;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/b;

    new-instance v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;

    invoke-direct {v0, p1}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/c;)V

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/b;->collect(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
