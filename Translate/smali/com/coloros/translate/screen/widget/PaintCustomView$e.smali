.class public final Lcom/coloros/translate/screen/widget/PaintCustomView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/PaintCustomView;->initRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/PaintCustomView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView$e;->a:Lcom/coloros/translate/screen/widget/PaintCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getID()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimEnd(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PaintCustom"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimStart(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PaintCustom"

    invoke-virtual {p0, v0, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs onAnimUpdate(Ljava/lang/String;D[F)V
    .locals 0

    const-string p0, "value"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaintCustom"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView$e;->a:Lcom/coloros/translate/screen/widget/PaintCustomView;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0xd36c43d

    if-eq v1, v3, :cond_5

    const v3, 0x36e395d6

    if-eq v1, v3, :cond_3

    const p0, 0x5d7ae9c1

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "IconAppearFinish"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "alpha from 0 to 1 finish"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "ClearPointFinish"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "clear point path finish"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->stop()Ln8/h0;

    goto :goto_1

    :cond_5
    const-string v0, "IconDisappearFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->j(Lcom/coloros/translate/screen/widget/PaintCustomView;)Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->k(Lcom/coloros/translate/screen/widget/PaintCustomView;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->d(Landroid/graphics/RectF;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onUpdate(D)V
    .locals 0

    return-void
.end method
