.class public Lcom/oplus/vfxsdk/rsview/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/vfxsdk/common/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/rsview/g$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/oplus/vfxsdk/rsview/g$a;


# instance fields
.field private final a:Z

.field public b:Lcom/oplus/vfxsdk/common/a;

.field private final c:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/ref/WeakReference;

.field private n:Landroid/view/View$OnAttachStateChangeListener;

.field private o:Lcom/oplus/vfxsdk/common/v;

.field private p:Z

.field private final q:Lcom/oplus/vfxsdk/rsview/h;

.field private final r:Lcom/oplus/vfxsdk/rsview/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/rsview/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/rsview/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/rsview/g;->s:Lcom/oplus/vfxsdk/rsview/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/vfxsdk/rsview/p;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cozFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-boolean p3, p0, Lcom/oplus/vfxsdk/rsview/g;->a:Z

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->c:Landroid/graphics/Paint;

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oplus/vfxsdk/rsview/g;->f:Landroid/graphics/RectF;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    const/4 v1, -0x3

    .line 8
    iput v1, p0, Lcom/oplus/vfxsdk/rsview/g;->k:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/oplus/vfxsdk/rsview/g;->l:Z

    .line 10
    new-instance v2, Lcom/oplus/vfxsdk/common/v;

    invoke-direct {v2}, Lcom/oplus/vfxsdk/common/v;-><init>()V

    iput-object v2, p0, Lcom/oplus/vfxsdk/rsview/g;->o:Lcom/oplus/vfxsdk/common/v;

    .line 11
    new-instance v2, Lcom/oplus/vfxsdk/rsview/h;

    invoke-direct {v2}, Lcom/oplus/vfxsdk/rsview/h;-><init>()V

    iput-object v2, p0, Lcom/oplus/vfxsdk/rsview/g;->q:Lcom/oplus/vfxsdk/rsview/h;

    .line 12
    const-string v2, "COE_LOGGER"

    const-string v3, "COE:ShadowDrawable=>construct shadowDrawable"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 14
    :try_start_0
    new-instance p2, Lcom/oplus/vfxsdk/rsview/a;

    new-instance v2, Lcom/oplus/vfxsdk/common/COEParse;

    invoke-direct {v2}, Lcom/oplus/vfxsdk/common/COEParse;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/io/b;->c(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/oplus/vfxsdk/common/COEParse;->parse([BZ)Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/oplus/vfxsdk/rsview/a;-><init>(Lcom/oplus/vfxsdk/common/COEData;ILcom/oplus/vfxsdk/rsview/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/rsview/g;->g(Lcom/oplus/vfxsdk/common/a;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 16
    sget-object p2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/vfxsdk/rsview/a;

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/rsview/a;->g0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 20
    invoke-virtual {p4}, Lcom/oplus/vfxsdk/rsview/p;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.RuntimeShaderAnimator"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/oplus/vfxsdk/rsview/o;

    const/4 p4, 0x0

    invoke-static {p3, p4, v1, p2}, Lcom/oplus/vfxsdk/rsview/o;->W(Lcom/oplus/vfxsdk/rsview/o;IILjava/lang/Object;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    :goto_0
    new-instance p1, Lcom/oplus/vfxsdk/common/v;

    invoke-direct {p1}, Lcom/oplus/vfxsdk/common/v;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/g;->o:Lcom/oplus/vfxsdk/common/v;

    .line 24
    new-instance p1, Lcom/oplus/vfxsdk/rsview/g$b;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/rsview/g$b;-><init>(Lcom/oplus/vfxsdk/rsview/g;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/g;->r:Lcom/oplus/vfxsdk/rsview/g$b;

    return-void

    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/vfxsdk/rsview/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 1
    new-instance p4, Lcom/oplus/vfxsdk/rsview/p;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lcom/oplus/vfxsdk/rsview/p;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/vfxsdk/rsview/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/vfxsdk/rsview/p;)V

    return-void
.end method

.method public static final synthetic a(Lcom/oplus/vfxsdk/rsview/g;)Lcom/oplus/vfxsdk/rsview/h;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->q:Lcom/oplus/vfxsdk/rsview/h;

    return-object p0
.end method

.method public static final synthetic b(Lcom/oplus/vfxsdk/rsview/g;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->m:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic c(Lcom/oplus/vfxsdk/rsview/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/g;->p:Z

    return p0
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/vfxsdk/rsview/g;->f:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/oplus/vfxsdk/rsview/g;->i:I

    int-to-float v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/oplus/vfxsdk/rsview/g;->j:I

    int-to-float v4, p0

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float p0, p0

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public final d()Landroid/graphics/RuntimeShader;
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/vfxsdk/rsview/a;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/a;->g0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->f()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected final f()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oplus/vfxsdk/rsview/g;->o:Lcom/oplus/vfxsdk/common/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/oplus/vfxsdk/common/v;->b(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "u_time"

    double-to-float v5, v5

    invoke-static {v7, v8, v5}, Lcom/coloros/translate/ui/texttranslation/i;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;F)V

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    new-array v8, v2, [F

    aput v6, v8, v1

    aput v7, v8, v0

    const-string v6, "u_resolution"

    invoke-static {v5, v6, v8}, Lcom/oplus/vfxsdk/rsview/f;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    :cond_1
    iget v5, p0, Lcom/oplus/vfxsdk/rsview/g;->i:I

    int-to-float v5, v5

    const/high16 v6, -0x40800000    # -1.0f

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/oplus/vfxsdk/rsview/g;->j:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    const/16 v6, 0x9

    new-array v6, v6, [F

    aput v3, v6, v1

    aput v4, v6, v0

    aput v4, v6, v2

    const/4 v0, 0x3

    aput v4, v6, v0

    const/4 v0, 0x4

    aput v3, v6, v0

    const/4 v0, 0x5

    aput v4, v6, v0

    const/4 v0, 0x6

    aput v5, v6, v0

    const/4 v0, 0x7

    aput v7, v6, v0

    const/16 v0, 0x8

    aput v3, v6, v0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "u_matResolution"

    invoke-static {v0, v1, v6}, Lcom/oplus/vfxsdk/rsview/f;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    :cond_2
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/vfxsdk/rsview/a;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/a;->j0()V

    return-void
.end method

.method public g(Lcom/oplus/vfxsdk/common/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/g;->b:Lcom/oplus/vfxsdk/common/a;

    return-void
.end method

.method public getAnimator()Lcom/oplus/vfxsdk/common/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->b:Lcom/oplus/vfxsdk/common/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "animator"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpacity()I
    .locals 3

    iget v0, p0, Lcom/oplus/vfxsdk/rsview/g;->k:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COE:ShadowDrawable=>getOpacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/oplus/vfxsdk/rsview/g;->k:I

    return p0
.end method

.method public final h(II)Lcom/oplus/vfxsdk/rsview/g;
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/rsview/g;->i:I

    iput p2, p0, Lcom/oplus/vfxsdk/rsview/g;->j:I

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/g;->e()V

    return-object p0
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->getAnimator()Lcom/oplus/vfxsdk/common/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.oplus.vfxsdk.rsview.AnimatorEffectShader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/vfxsdk/rsview/a;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/rsview/o;->a0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isProjected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/rsview/g;->l:Z

    return p0
.end method

.method public final j(Landroid/view/View;)Lcom/oplus/vfxsdk/rsview/g;
    .locals 2

    const-string v0, "COE_LOGGER"

    const-string v1, "COE:ShadowDrawable=>start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/g;->p:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/g;->p:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->m:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/oplus/vfxsdk/rsview/g$c;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/rsview/g$c;-><init>(Lcom/oplus/vfxsdk/rsview/g;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->n:Landroid/view/View$OnAttachStateChangeListener;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->r:Lcom/oplus/vfxsdk/rsview/g$b;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-object p0
.end method

.method public final k()Lcom/oplus/vfxsdk/rsview/g;
    .locals 3

    iget-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/g;->p:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/rsview/g;->p:Z

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->m:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oplus/vfxsdk/rsview/g;->n:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    iput-object v1, p0, Lcom/oplus/vfxsdk/rsview/g;->m:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COE:ShadowDrawable=>bounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/rsview/g;->e()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/rsview/g;->d()Landroid/graphics/RuntimeShader;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p0, v1, v0

    const-string p0, "u_resolution"

    invoke-static {p1, p0, v1}, Lcom/oplus/vfxsdk/rsview/f;->a(Landroid/graphics/RuntimeShader;Ljava/lang/String;[F)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COE:ShadowDrawable=>setAlpha: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COE:ShadowDrawable=>setColorFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COE_LOGGER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/vfxsdk/rsview/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
