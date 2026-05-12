.class public Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;
.super Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;
.source "SourceFile"

# interfaces
.implements Le8/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;
    }
.end annotation


# instance fields
.field private a:Le8/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Le8/g;

    .line 3
    new-instance v11, Le8/f;

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v5, v0, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v9, 0x30

    const/4 v10, 0x0

    .line 5
    const-string v1, "rect_progress"

    const-wide/16 v4, 0x14d

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    invoke-direct {p1, v11, p0}, Le8/g;-><init>(Le8/f;Le8/e;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->a:Le8/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Le8/g;

    .line 9
    new-instance p2, Le8/f;

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v3, v5, v0, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v9, 0x30

    const/4 v10, 0x0

    .line 11
    const-string v1, "rect_progress"

    const-wide/16 v4, 0x14d

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    invoke-direct {p1, p2, p0}, Le8/g;-><init>(Le8/f;Le8/e;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->a:Le8/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Le8/g;

    .line 15
    new-instance p2, Le8/f;

    const/4 p3, 0x0

    .line 16
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v3, v4, p3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/16 v9, 0x30

    const/4 v10, 0x0

    .line 17
    const-string v1, "rect_progress"

    const-wide/16 v4, 0x14d

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Le8/f;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/animation/TimeInterpolator;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    invoke-direct {p1, p2, p0}, Le8/g;-><init>(Le8/f;Le8/e;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->a:Le8/g;

    return-void
.end method

.method public static final synthetic f(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)Lh8/a;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getCoeEngineListener()Lh8/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le8/e$a;->a(Le8/e;Lcom/oplus/vfxsdk/common/o;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getRenderer()Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getPass(I)Lcom/oplus/vfxsdk/naive/coe/engine/Pass;

    move-result-object p0

    if-eqz p0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/engine/Pass;->setParameter(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final getProcessParameter()Le8/g;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;->a:Le8/g;

    return-object p0
.end method

.method public initRenderer()V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/cuieffect/CircleTextureView$a;-><init>(Lcom/oplus/vfxsdk/cuieffect/CircleTextureView;)V

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setRenderer(Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;)V

    return-void
.end method
