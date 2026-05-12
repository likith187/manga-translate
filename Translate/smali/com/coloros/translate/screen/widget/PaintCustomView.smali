.class public final Lcom/coloros/translate/screen/widget/PaintCustomView;
.super Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/PaintCustomView$a;,
        Lcom/coloros/translate/screen/widget/PaintCustomView$b;,
        Lcom/coloros/translate/screen/widget/PaintCustomView$c;,
        Lcom/coloros/translate/screen/widget/PaintCustomView$d;
    }
.end annotation


# static fields
.field public static final s:Lcom/coloros/translate/screen/widget/PaintCustomView$b;


# instance fields
.field private a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

.field private final b:Landroid/graphics/RectF;

.field private c:F

.field private final f:F

.field private final h:F

.field private i:[I

.field private j:I

.field private k:F

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

.field private p:Z

.field private q:F

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/PaintCustomView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/PaintCustomView$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView;->s:Lcom/coloros/translate/screen/widget/PaintCustomView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/screen/R$dimen;->dp_10:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/screen/R$dimen;->dp_40:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    .line 5
    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/screen/R$dimen;->dp_15:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->k:F

    .line 8
    sget-object p1, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_10:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    .line 13
    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_15:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->k:F

    .line 16
    sget-object p1, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_10:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    .line 21
    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_15:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->k:F

    .line 24
    sget-object p1, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->q(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    return-void
.end method

.method public static synthetic g(Lcom/coloros/translate/screen/widget/PaintCustomView;FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/widget/PaintCustomView;->n(Lcom/coloros/translate/screen/widget/PaintCustomView;FF)V

    return-void
.end method

.method private final getNavigationBarHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "getContext(...)"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/p;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public static synthetic h(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->o(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    return-void
.end method

.method public static synthetic i(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->p(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    return-void
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/widget/PaintCustomView;)Lcom/coloros/translate/screen/widget/PaintCustomView$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    return-object p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/screen/widget/PaintCustomView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method private final l()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "PaintCustom"

    const-string v2, "iconDisappear"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Message;

    const-string v1, "IconDisappear"

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Message;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->sendMessage(Lcom/oplus/vfxsdk/naive/coe/engine/Message;)V

    :cond_0
    return-void
.end method

.method private final m(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_e

    const/4 v2, 0x1

    if-eq p1, v2, :cond_c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->q:F

    sub-float p1, v0, p1

    iget v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->r:F

    sub-float v3, v1, v3

    iput v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->q:F

    iput v1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->r:F

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->n:Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    add-float v6, v5, p1

    cmpg-float v1, v6, v1

    if-ltz v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v6, v6, v4

    int-to-float v6, v6

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float v7, v6, v3

    iget v8, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->j:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_3

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v3

    iget-object v8, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v8, v8, v2

    iget v9, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    if-eqz v1, :cond_5

    add-float/2addr v5, p1

    iput v5, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_5
    if-eqz v2, :cond_6

    add-float/2addr v6, v3

    iput v6, v0, Landroid/graphics/RectF;->top:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v3

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_6
    new-instance p1, Lcom/coloros/translate/screen/widget/j;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/j;-><init>(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :cond_7
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v5, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-eq v0, v5, :cond_11

    sget-object v5, Lcom/coloros/translate/screen/widget/PaintCustomView$d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    move v0, v4

    move v5, v0

    :goto_2
    move v6, v5

    :goto_3
    move v7, v6

    goto :goto_6

    :pswitch_0
    move v5, v2

    move v7, v5

    move v0, v4

    move v6, v0

    goto :goto_6

    :pswitch_1
    move v5, v2

    move v6, v5

    move v0, v4

    move v7, v0

    goto :goto_6

    :pswitch_2
    move v0, v2

    move v7, v0

    move v5, v4

    :goto_4
    move v6, v5

    goto :goto_6

    :pswitch_3
    move v0, v2

    move v6, v0

    move v5, v4

    :goto_5
    move v7, v5

    goto :goto_6

    :pswitch_4
    move v5, v2

    move v0, v4

    move v6, v0

    goto :goto_3

    :pswitch_5
    move v7, v2

    move v0, v4

    move v5, v0

    goto :goto_4

    :pswitch_6
    move v6, v2

    move v0, v4

    move v5, v0

    goto :goto_5

    :pswitch_7
    move v0, v2

    move v5, v4

    goto :goto_2

    :goto_6
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v3

    iget v9, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->j:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_8

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v8

    iget v10, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iput v8, v0, Landroid/graphics/RectF;->top:F

    :cond_8
    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v2, v3, v2

    iget v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v5, v2

    if-gez v2, :cond_9

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v5, v2

    iget v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    iput v5, v0, Landroid/graphics/RectF;->bottom:F

    :cond_9
    if-eqz v6, :cond_a

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    iget v5, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    cmpl-float v1, v2, v1

    if-lez v1, :cond_a

    iput v2, v0, Landroid/graphics/RectF;->left:F

    :cond_a
    if-eqz v7, :cond_b

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v2, v1, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v2, v3

    iget v5, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_b

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v3, v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_b
    new-instance p1, Lcom/coloros/translate/screen/widget/k;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/k;-><init>(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_c
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->n:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    sget-object v0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-eq p1, v0, :cond_11

    :cond_d
    new-instance p1, Lcom/coloros/translate/screen/widget/l;

    invoke-direct {p1, p0}, Lcom/coloros/translate/screen/widget/l;-><init>(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_e
    iput v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->q:F

    iput v1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->r:F

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->t(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->n:Z

    sget-object v2, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-nez p1, :cond_f

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->u(FF)Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    :cond_f
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->n:Z

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchDragEvent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PaintCustom"

    invoke-virtual {p1, v4, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->n:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->o:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-eq p1, v2, :cond_11

    :cond_10
    new-instance p1, Lcom/coloros/translate/screen/widget/i;

    invoke-direct {p1, p0, v0, v1}, Lcom/coloros/translate/screen/widget/i;-><init>(Lcom/coloros/translate/screen/widget/PaintCustomView;FF)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final n(Lcom/coloros/translate/screen/widget/PaintCustomView;FF)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->f(FF)V

    :cond_0
    return-void
.end method

.method private static final o(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    invoke-interface {v0, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->c(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static final p(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    invoke-interface {v0, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->c(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static final q(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    invoke-interface {v0, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->g(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private final r(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    const/4 v5, 0x2

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_2

    const/4 p1, 0x3

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->p:Z

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->p:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->w(FF)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->v(Landroid/view/MotionEvent;)V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->p:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v2, v1

    sub-float v8, v0, v6

    iget v9, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    cmpg-float v10, v8, v9

    const/4 v11, 0x0

    if-gez v10, :cond_7

    sub-float/2addr v9, v8

    int-to-float v0, v5

    div-float/2addr v9, v0

    sub-float/2addr v6, v9

    invoke-static {v11, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->h:F

    add-float v8, v6, v0

    iget-object v9, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v9, v9, v4

    iget v10, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    sub-int v12, v9, v10

    int-to-float v12, v12

    cmpl-float v12, v8, v12

    if-lez v12, :cond_6

    sub-int/2addr v9, v10

    int-to-float v6, v9

    sub-float v0, v6, v0

    move v13, v6

    move v6, v0

    move v0, v13

    goto :goto_1

    :cond_6
    move v0, v8

    :cond_7
    :goto_1
    iget v8, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    cmpg-float v9, v7, v8

    if-gez v9, :cond_9

    sub-float/2addr v8, v7

    int-to-float v2, v5

    div-float/2addr v8, v2

    sub-float/2addr v1, v8

    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->f:F

    add-float v5, v1, v2

    iget-object v7, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v3, v7, v3

    int-to-float v7, v3

    cmpl-float v7, v5, v7

    if-lez v7, :cond_8

    int-to-float v1, v3

    sub-float v2, v1, v2

    move v13, v2

    move v2, v1

    move v1, v13

    goto :goto_2

    :cond_8
    move v2, v5

    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iput-boolean v4, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->m:Z

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->v(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->l()V

    return-void

    :cond_a
    iget v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->j:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_b

    iput-boolean v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->p:Z

    return-void

    :cond_b
    iget-object v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput-boolean v4, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->p:Z

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v2, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->v(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz p0, :cond_c

    invoke-interface {p0, v0, v1}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->e(FF)V

    :cond_c
    return-void
.end method

.method private final s()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFlipY(Z)V

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->LINEAR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$drawable;->ic_circle_paint:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Message;

    const-string v2, "setTexture"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Message;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->sendMessage(Lcom/oplus/vfxsdk/naive/coe/engine/Message;)V

    :cond_0
    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/Message;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setDensity"

    invoke-direct {v0, v2, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/Message;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->sendMessage(Lcom/oplus/vfxsdk/naive/coe/engine/Message;)V

    :cond_1
    return-void
.end method

.method private final t(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    add-float/2addr v1, p0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final u(FF)Lcom/coloros/translate/screen/widget/PaintCustomView$c;
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->c:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v7, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v6

    cmpl-float v7, p1, v7

    if-lez v7, :cond_4

    iget v7, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v6

    cmpg-float p1, p1, v7

    if-gez p1, :cond_4

    move p1, v2

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    iget v7, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v6

    cmpl-float v7, p2, v7

    if-lez v7, :cond_5

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, v6

    cmpg-float p0, p2, p0

    if-gez p0, :cond_5

    move v1, v2

    :cond_5
    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->NONE:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-nez p1, :cond_6

    if-eqz v1, :cond_c

    :cond_6
    if-eqz v0, :cond_8

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-eqz v3, :cond_7

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    goto :goto_5

    :cond_7
    if-eqz v5, :cond_c

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->LEFT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_a

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    if-eqz v3, :cond_9

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT_TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    goto :goto_5

    :cond_9
    if-eqz v5, :cond_c

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->TOP:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    goto :goto_5

    :cond_b
    if-eqz v5, :cond_c

    sget-object p0, Lcom/coloros/translate/screen/widget/PaintCustomView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/PaintCustomView$c;

    :cond_c
    :goto_5
    return-object p0
.end method

.method private final v(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->i:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->touchEvent(IFF)V

    :cond_0
    return-void
.end method

.method private final w(FF)V
    .locals 4

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->b:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iput p1, p0, Landroid/graphics/RectF;->right:F

    :cond_1
    :goto_0
    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_2
    cmpl-float p1, p2, v3

    if-lez p1, :cond_3

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getFeatures()[Ljava/lang/String;
    .locals 0

    const-string p0, "SelectPaintSystem"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initRenderer()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->k:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->j:I

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->l:I

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setRenderer(Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->s()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->getEngine()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/coloros/translate/screen/widget/PaintCustomView$e;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$e;-><init>(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->addCallback(Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView$a;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->m(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/PaintCustomView;->r(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setCallback(Lcom/coloros/translate/screen/widget/PaintCustomView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/PaintCustomView;->a:Lcom/coloros/translate/screen/widget/PaintCustomView$a;

    return-void
.end method
