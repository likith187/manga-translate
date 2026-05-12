.class final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/oplus/vfxsdk/naive/a;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;",
            "Lcom/oplus/vfxsdk/naive/a;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-direct {p1, v0, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->g(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/a;->z(Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    invoke-static {v2, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->l(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->c(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$c$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/naive/a;->z(Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    invoke-static {p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->h(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
