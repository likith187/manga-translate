.class final Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;
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
.field final synthetic $params:Lcom/coloros/translate/screen/widget/w;

.field final synthetic $this_apply:Lcom/oplus/vfxsdk/naive/a;

.field label:I

.field final synthetic this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/a;Lcom/coloros/translate/screen/widget/w;Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/vfxsdk/naive/a;",
            "Lcom/coloros/translate/screen/widget/w;",
            "Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$params:Lcom/coloros/translate/screen/widget/w;

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$params:Lcom/coloros/translate/screen/widget/w;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;-><init>(Lcom/oplus/vfxsdk/naive/a;Lcom/coloros/translate/screen/widget/w;Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/c0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->invoke(Lkotlinx/coroutines/c0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/a;->k()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$params:Lcom/coloros/translate/screen/widget/w;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/w;->b()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/coloros/translate/screen/utils/l;->a(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v3}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    invoke-virtual {v3, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    sget-object v4, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    invoke-virtual {v3, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    sget-object v5, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->LINEAR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    invoke-virtual {v3, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    new-instance v6, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v6}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    invoke-virtual {v6, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    invoke-virtual {v6, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    invoke-virtual {v6, v5}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v1, v6}, Lcom/oplus/vfxsdk/naive/a;->h(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v4, v3}, Lcom/oplus/vfxsdk/naive/a;->h(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "uBaseTexture"

    filled-new-array {v1}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v4, v5}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "uRawTexture"

    filled-new-array {v3}, [Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->g(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/a;->z(Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->c(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->$this_apply:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/a;->z(Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p1, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->l(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a$b;->this$0:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p0, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;->h(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
