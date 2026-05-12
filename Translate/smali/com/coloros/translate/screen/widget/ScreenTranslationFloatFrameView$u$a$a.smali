.class final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/oplus/vfxsdk/naive/a;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;",
            "Lcom/oplus/vfxsdk/naive/a;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

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

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-direct {p1, v0, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->r(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->r(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p1, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/a;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lcom/coloros/translate/screen/utils/l;->a(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v4}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    invoke-virtual {v4, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    sget-object v5, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    invoke-virtual {v4, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    sget-object v6, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->LINEAR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    invoke-virtual {v4, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    new-instance v7, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v7}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    invoke-virtual {v7, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    invoke-virtual {v7, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    invoke-virtual {v7, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v3, v1}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v5, v4}, Lcom/oplus/vfxsdk/naive/a;->h(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v4

    filled-new-array {v4}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v4

    const-string v5, "uBaseTexture"

    invoke-virtual {v3, v1, v5, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v3, v1}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u$a$a;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {p0, v7}, Lcom/oplus/vfxsdk/naive/a;->h(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p0

    filled-new-array {p0}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p0

    const/4 v3, 0x2

    const-string v4, "uRawTexture"

    invoke-virtual {v1, v3, v4, p0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
