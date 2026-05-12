.class final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic a:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;->a:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/coui/component/responsiveui/status/WindowFeature;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;->a:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[trackWindowFeature] windowFeature = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowFeatureUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/component/responsiveui/status/WindowFeature;

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;->emit(Lcom/coui/component/responsiveui/status/WindowFeature;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
