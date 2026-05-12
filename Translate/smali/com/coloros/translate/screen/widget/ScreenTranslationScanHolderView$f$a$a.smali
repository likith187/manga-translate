.class final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/oplus/vfxsdk/naive/a;

.field label:I


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/vfxsdk/naive/a;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-direct {p1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;-><init>(Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "screen_recognition.coz"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Ld8/a$a;->a(Ld8/a;Ljava/lang/String;ZZILjava/lang/Object;)V

    invoke-static {}, Lcom/coloros/translate/screen/utils/p;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->D(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const/16 p1, 0x3c

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->D(I)V

    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
