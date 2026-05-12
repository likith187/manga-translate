.class public Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$a;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field public b:Lcom/oplus/vfxsdk/common/a;

.field private c:Z

.field private f:Lcom/oplus/vfxsdk/common/v;

.field private final h:Lcom/oplus/vfxsdk/rsview/h;

.field private i:Z

.field private final j:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->k:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Lcom/oplus/vfxsdk/common/v;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/v;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->f:Lcom/oplus/vfxsdk/common/v;

    .line 4
    new-instance v0, Lcom/oplus/vfxsdk/rsview/h;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/rsview/h;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->h:Lcom/oplus/vfxsdk/rsview/h;

    .line 5
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 6
    new-instance p1, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;-><init>(Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->j:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a:Landroid/graphics/Paint;

    .line 9
    new-instance p2, Lcom/oplus/vfxsdk/common/v;

    invoke-direct {p2}, Lcom/oplus/vfxsdk/common/v;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->f:Lcom/oplus/vfxsdk/common/v;

    .line 10
    new-instance p2, Lcom/oplus/vfxsdk/rsview/h;

    invoke-direct {p2}, Lcom/oplus/vfxsdk/rsview/h;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->h:Lcom/oplus/vfxsdk/rsview/h;

    .line 11
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    new-instance p1, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;-><init>(Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->j:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a:Landroid/graphics/Paint;

    .line 15
    new-instance p2, Lcom/oplus/vfxsdk/common/v;

    invoke-direct {p2}, Lcom/oplus/vfxsdk/common/v;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->f:Lcom/oplus/vfxsdk/common/v;

    .line 16
    new-instance p2, Lcom/oplus/vfxsdk/rsview/h;

    invoke-direct {p2}, Lcom/oplus/vfxsdk/rsview/h;-><init>()V

    iput-object p2, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->h:Lcom/oplus/vfxsdk/rsview/h;

    .line 17
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18
    new-instance p1, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;-><init>(Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->j:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    return-void
.end method

.method public static final synthetic a(Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->c:Z

    return p0
.end method

.method private final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(I)Landroid/graphics/RuntimeShader;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getShaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/vfxsdk/rsview/d;->a(Ljava/lang/Object;)Landroid/graphics/RuntimeShader;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->f:Lcom/oplus/vfxsdk/common/v;

    long-to-double v3, p1

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/oplus/vfxsdk/common/v;->b(D)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "u_time"

    invoke-static {v1, v3, v2}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->c:Z

    return-void
.end method

.method public getAllTrigers()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/oplus/vfxsdk/common/PassParams;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/vfxsdk/common/q$a;->a(Lcom/oplus/vfxsdk/common/q;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getAnimator()Lcom/oplus/vfxsdk/common/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->b:Lcom/oplus/vfxsdk/common/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "animator"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnimators()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/Animator;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/vfxsdk/common/q$a;->b(Lcom/oplus/vfxsdk/common/q;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getShader()Landroid/graphics/RuntimeShader;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->b(I)Landroid/graphics/RuntimeShader;

    move-result-object p0

    return-object p0
.end method

.method public final getShaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RuntimeShader;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.MultiPassShader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const-string v0, "COE_LOGGER"

    const-string v1, "COERuntimeShader=>onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->d()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->j:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getAnimators()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/Animator;->stop()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getAnimators()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->i:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->getShaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/vfxsdk/rsview/d;->a(Ljava/lang/Object;)Landroid/graphics/RuntimeShader;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const-string v0, "u_resolution"

    invoke-static {p2, v0, p3, p4}, Lcom/oplus/vfxsdk/rsview/e;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;FF)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->e()V

    :cond_1
    return-void
.end method

.method public setAnimator(Lcom/oplus/vfxsdk/common/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->b:Lcom/oplus/vfxsdk/common/a;

    return-void
.end method

.method public final setFPS(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->h:Lcom/oplus/vfxsdk/rsview/h;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/rsview/h;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setRuntimeShaderListener(Lcom/oplus/vfxsdk/rsview/c;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
