.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->I(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$r;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->b(Lh8/a;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$r;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/PaintCustomView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->start()Ln8/h0;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->g(Lh8/a;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->a(Lh8/a;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->c(Lh8/a;)V

    return-void
.end method

.method public onRenderQuit()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->d(Lh8/a;)V

    return-void
.end method

.method public onRenderStart()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->e(Lh8/a;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-static {p0}, Lh8/a$a;->f(Lh8/a;)V

    return-void
.end method
