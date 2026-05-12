.class public final Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;
.super Lcom/coui/appcompat/textview/COUITextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$b;,
        Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$c;
    }
.end annotation


# static fields
.field public static final v:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$b;


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field private final b:Ljava/util/HashMap;

.field private c:Ljava/lang/CharSequence;

.field private f:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:I

.field private n:J

.field private o:J

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->v:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/textview/COUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "ofFloat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->n:J

    .line 8
    iput-wide v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->o:J

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->p:I

    .line 10
    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->t:I

    .line 11
    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->u:I

    .line 12
    sget-object v1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string p3, "obtainStyledAttributes(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget p3, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextType:I

    const/4 v1, 0x7

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->m:I

    .line 14
    sget p3, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextStartColor:I

    .line 15
    sget v1, Lcom/support/appcompat/R$color;->coui_transparence:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 16
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->f:I

    .line 17
    sget p3, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextEndColor:I

    .line 18
    sget v1, Lcom/support/appcompat/R$color;->Blue50Opacity40:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 19
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->h:I

    .line 20
    sget p1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextStableColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->i:I

    .line 21
    sget p1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextDuration:I

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->j:I

    .line 22
    sget p1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextDelay:I

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->k:I

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    new-instance p1, Lp2/c;

    invoke-direct {p1, p0}, Lp2/c;-><init>(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    new-instance p1, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$a;-><init>(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x1010084

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->d(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->j(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;I)V

    return-void
.end method

.method private static final d(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private final f()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->n:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->o:J

    return-void
.end method

.method private final h(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-gt p1, p2, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v0, -0x1

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->r:Z

    iput-boolean v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->s:Z

    iput v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->q:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->p:I

    iput-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->o:J

    :cond_2
    if-nez p3, :cond_4

    iget-wide v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->n:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->r:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->s:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->o:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->f()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->n:J

    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->i(IIZ)V

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "COUIAnimateTextView"

    const-string p2, "showTextWithAnimation return"

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private final i(IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-gt v1, v2, :cond_3

    move v4, v1

    :goto_0
    iget v5, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->k:I

    sub-int v6, v4, v1

    mul-int v9, v5, v6

    iget-object v5, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    new-instance v15, Lp2/b;

    new-instance v14, Lp2/a;

    iget v8, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->j:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v10

    iget v11, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->l:F

    iget v12, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->f:I

    iget v13, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->h:I

    iget v7, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->i:I

    move/from16 v16, v7

    move-object v7, v14

    move-object v1, v14

    move/from16 v14, v16

    invoke-direct/range {v7 .. v14}, Lp2/a;-><init>(IIFFIII)V

    new-instance v7, Lp2/d;

    invoke-direct {v7, v0, v4}, Lp2/d;-><init>(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;I)V

    invoke-direct {v15, v1, v7}, Lp2/b;-><init>(Lp2/a;Ljava/lang/Runnable;)V

    invoke-interface {v6, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/b;

    if-eqz v1, :cond_1

    iget v5, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->j:I

    iget v6, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->l:F

    invoke-virtual {v1, v5, v9, v6}, Lp2/b;->f(IIF)V

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x21

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/b;

    if-eqz v1, :cond_2

    iget v6, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->m:I

    iget-wide v7, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->n:J

    invoke-virtual {v1, v6, v7, v8}, Lp2/b;->e(IJ)V

    :cond_2
    if-eq v4, v2, :cond_3

    move/from16 v1, p1

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    sub-int v2, v2, p1

    iget v3, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->k:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->j:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez p3, :cond_5

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, v0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_3
    return-void
.end method

.method private static final j(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->p:I

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bringPointIntoView(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result p0

    return p0
.end method

.method public bringPointIntoView(IZ)Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 5
    iget v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->t:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->u:I

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->t:I

    .line 7
    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->u:I

    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->bringPointIntoView(IZ)Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->t:I

    .line 10
    iput v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->u:I

    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->bringPointIntoView(IZ)Z

    move-result p0

    return p0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lp2/b;->a()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setAnimateText(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->r:Z

    iput-boolean v0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->s:Z

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->q:I

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1, v0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->h(IIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setAnimationListener(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$c;)V
    .locals 0

    return-void
.end method

.method public final setDelay(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->k:I

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->j:I

    return-void
.end method

.method public final setEndColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->h:I

    return-void
.end method

.method public final setStableColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->i:I

    return-void
.end method

.method public final setStartColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->f:I

    return-void
.end method

.method public final setTranslationOffset(F)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->l:F

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->m:I

    return-void
.end method
