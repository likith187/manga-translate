.class public Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;
.super Lcom/coui/appcompat/textview/COUITextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/animation/ValueAnimator;

.field private final b:Ljava/util/HashMap;

.field private c:Ljava/lang/CharSequence;

.field private f:I

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:F

.field private m:I

.field private n:J

.field private o:J

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/textview/COUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    .line 6
    iput-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->n:J

    .line 7
    iput-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->o:J

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->p:I

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->q:I

    .line 10
    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->r:Z

    .line 11
    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->s:Z

    .line 12
    sget-object v2, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 13
    sget p3, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextType:I

    const/4 v1, 0x7

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->m:I

    .line 14
    sget p3, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextStartColor:I

    sget v1, Lcom/coloros/translate/R$color;->coui_animate_text_start_color_default:I

    .line 15
    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 16
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->f:I

    .line 17
    sget p3, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextEndColor:I

    sget v1, Lcom/coloros/translate/R$color;->coui_animate_text_end_color_default:I

    .line 18
    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 19
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->h:I

    .line 20
    sget p1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextStableColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->i:I

    .line 21
    sget p1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextDuration:I

    const/high16 p3, 0x43fa0000    # 500.0f

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    float-to-long v1, p1

    iput-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j:J

    .line 22
    sget p1, Lcom/coloros/translate/R$styleable;->COUIAnimateTextView_couiAnimateTextDelay:I

    const/high16 p3, 0x42b60000    # 91.0f

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    float-to-long v1, p1

    iput-wide v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->k:J

    .line 23
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    new-instance p1, Lcom/coloros/translate/ui/simultaneous/widget/d;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/widget/d;-><init>(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    new-instance p1, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView$a;

    invoke-direct {p1, p0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView$a;-><init>(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->h(I)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->g(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;)Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->n:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->o:J

    return-void
.end method

.method private synthetic g(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private synthetic h(I)V
    .locals 1

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->p:I

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private j(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-gt p1, p2, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_6

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v0, -0x1

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->r:Z

    iput-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->s:Z

    iput v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->q:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->p:I

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->o:J

    :cond_2
    if-nez p3, :cond_4

    iget-wide v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->n:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->r:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->s:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->o:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->e()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->n:J

    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->k(IIZ)V

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "COUIAnimateTextView"

    const-string p1, "showTextWithAnimation: return;"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private k(IIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move/from16 v3, p1

    :goto_0
    if-gt v3, v1, :cond_3

    iget-wide v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->k:J

    sub-int v6, v3, p1

    int-to-long v6, v6

    mul-long v11, v4, v6

    iget-object v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/coloros/translate/ui/simultaneous/widget/c;

    new-instance v7, Lcom/coloros/translate/ui/simultaneous/widget/b;

    iget-wide v9, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j:J

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    iget v14, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->l:F

    iget v15, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->f:I

    iget v8, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->h:I

    iget v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->i:I

    move/from16 v16, v8

    move-object v8, v7

    move/from16 v17, v1

    invoke-direct/range {v8 .. v17}, Lcom/coloros/translate/ui/simultaneous/widget/b;-><init>(JJFFIII)V

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/widget/e;

    invoke-direct {v1, v0, v3}, Lcom/coloros/translate/ui/simultaneous/widget/e;-><init>(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;I)V

    invoke-direct {v6, v7, v1}, Lcom/coloros/translate/ui/simultaneous/widget/c;-><init>(Lcom/coloros/translate/ui/simultaneous/widget/b;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/coloros/translate/ui/simultaneous/widget/c;

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v8, v1}, Lcom/coloros/translate/ui/simultaneous/widget/c;->g(F)V

    iget-wide v9, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j:J

    iget v13, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->l:F

    invoke-virtual/range {v8 .. v13}, Lcom/coloros/translate/ui/simultaneous/widget/c;->f(JJF)V

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/widget/c;

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/coloros/translate/ui/simultaneous/widget/c;->g(F)V

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x21

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->m:I

    iget-wide v5, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->n:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/coloros/translate/ui/simultaneous/widget/c;->e(IJ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    sub-int v2, p2, p1

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->k:J

    mul-long/2addr v2, v4

    iget-wide v4, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez p3, :cond_5

    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/ui/simultaneous/widget/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/widget/c;->a()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getAnimateCharSequence()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;I)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->r:Z

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->s:Z

    iput p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->q:I

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1, v0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j(IIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setAnimateText(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->r:Z

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->s:Z

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->q:I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->q:I

    :goto_0
    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->q:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1, v0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j(IIZ)V

    return-void

    :cond_2
    :goto_1
    const-string p1, ""

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setAnimationListener(Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView$b;)V
    .locals 0

    return-void
.end method

.method public setDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->k:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->j:J

    return-void
.end method

.method public setEndColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->h:I

    return-void
.end method

.method public setStableColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->i:I

    return-void
.end method

.method public setStartColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->f:I

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->f()V

    return-void
.end method

.method public setTranslationOffset(F)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->l:F

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/COUIAnimateTextView;->m:I

    return-void
.end method
