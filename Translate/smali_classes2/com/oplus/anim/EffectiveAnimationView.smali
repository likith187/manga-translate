.class public Lcom/oplus/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationView$b;,
        Lcom/oplus/anim/EffectiveAnimationView$SavedState;
    }
.end annotation


# instance fields
.field private final a:Lcom/oplus/anim/p;

.field private final b:Lcom/oplus/anim/p;

.field private final c:Lcom/oplus/anim/p;

.field private f:Lcom/oplus/anim/p;

.field private h:I

.field private final i:Lcom/oplus/anim/o;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:Ljava/util/Set;

.field private final p:Ljava/util/Set;

.field private q:Lcom/oplus/anim/t;

.field private r:Lcom/oplus/anim/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/oplus/anim/u;

    invoke-direct {p1}, Lcom/oplus/anim/u;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->a:Lcom/oplus/anim/p;

    .line 3
    new-instance p1, Lcom/oplus/anim/v;

    invoke-direct {p1, p0}, Lcom/oplus/anim/v;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/p;

    .line 4
    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$a;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$a;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Lcom/oplus/anim/p;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:I

    .line 6
    new-instance v0, Lcom/oplus/anim/o;

    invoke-direct {v0}, Lcom/oplus/anim/o;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    .line 7
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    .line 8
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->m:Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    .line 10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    .line 11
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->p:Ljava/util/Set;

    const/4 p1, 0x0

    .line 12
    sget v0, Lcom/oplus/anim/R$attr;->effectiveAnimationViewStyle:I

    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->o(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Lcom/oplus/anim/u;

    invoke-direct {p1}, Lcom/oplus/anim/u;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->a:Lcom/oplus/anim/p;

    .line 15
    new-instance p1, Lcom/oplus/anim/v;

    invoke-direct {p1, p0}, Lcom/oplus/anim/v;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/p;

    .line 16
    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$a;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$a;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Lcom/oplus/anim/p;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:I

    .line 18
    new-instance v0, Lcom/oplus/anim/o;

    invoke-direct {v0}, Lcom/oplus/anim/o;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    .line 19
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    .line 20
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->m:Z

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    .line 23
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->p:Ljava/util/Set;

    .line 24
    sget p1, Lcom/oplus/anim/R$attr;->effectiveAnimationViewStyle:I

    invoke-direct {p0, p2, p1}, Lcom/oplus/anim/EffectiveAnimationView;->o(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Lcom/oplus/anim/u;

    invoke-direct {p1}, Lcom/oplus/anim/u;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->a:Lcom/oplus/anim/p;

    .line 27
    new-instance p1, Lcom/oplus/anim/v;

    invoke-direct {p1, p0}, Lcom/oplus/anim/v;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/p;

    .line 28
    new-instance p1, Lcom/oplus/anim/EffectiveAnimationView$a;

    invoke-direct {p1, p0}, Lcom/oplus/anim/EffectiveAnimationView$a;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Lcom/oplus/anim/p;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:I

    .line 30
    new-instance v0, Lcom/oplus/anim/o;

    invoke-direct {v0}, Lcom/oplus/anim/o;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    .line 31
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    .line 32
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->m:Z

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    .line 34
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->p:Ljava/util/Set;

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/oplus/anim/EffectiveAnimationView;->o(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private A(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_PROGRESS:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->Q0(F)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/anim/EffectiveAnimationView;I)Lcom/oplus/anim/r;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->r(I)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationView;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/anim/EffectiveAnimationView;Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->q(Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/anim/EffectiveAnimationView;)I
    .locals 0

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/p;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Lcom/oplus/anim/p;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/p;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->a:Lcom/oplus/anim/p;

    return-object p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->q:Lcom/oplus/anim/t;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/p;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/t;->j(Lcom/oplus/anim/p;)Lcom/oplus/anim/t;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->q:Lcom/oplus/anim/t;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Lcom/oplus/anim/p;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/t;->i(Lcom/oplus/anim/p;)Lcom/oplus/anim/t;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->r:Lcom/oplus/anim/a;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->u()V

    return-void
.end method

.method private m(Ljava/lang/String;)Lcom/oplus/anim/t;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oplus/anim/t;

    new-instance v1, Lcom/oplus/anim/w;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/w;-><init>(Lcom/oplus/anim/EffectiveAnimationView;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/oplus/anim/t;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private n(I)Lcom/oplus/anim/t;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oplus/anim/t;

    new-instance v1, Lcom/oplus/anim/x;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/x;-><init>(Lcom/oplus/anim/EffectiveAnimationView;I)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/oplus/anim/t;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->s(Landroid/content/Context;I)Lcom/oplus/anim/t;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->t(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private o(Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_cacheComposition:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "anim_rawRes and anim_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fallbackRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setFallbackResource(I)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->m:Z

    :cond_5
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p2, v1}, Lcom/oplus/anim/o;->S0(I)V

    :cond_6
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    :cond_7
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    :cond_8
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setSpeed(F)V

    :cond_9
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_clipToCompositionBounds:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_clipToCompositionBounds:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setClipToCompositionBounds(Z)V

    :cond_a
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_defaultFontFileExtension:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_defaultFontFileExtension:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setDefaultFontFileExtension(Ljava/lang/String;)V

    :cond_b
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_progress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_progress:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/oplus/anim/EffectiveAnimationView;->A(FZ)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->l(Z)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Le/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    new-instance v1, Lcom/oplus/anim/n0;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-direct {v1, p2}, Lcom/oplus/anim/n0;-><init>(I)V

    new-instance p2, Lf6/f;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lf6/f;-><init>([Ljava/lang/String;)V

    new-instance v3, Lm6/b;

    invoke-direct {v3, v1}, Lm6/b;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/oplus/anim/q;->K:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p2, v1, v3}, Lcom/oplus/anim/EffectiveAnimationView;->h(Lf6/f;Ljava/lang/Object;Lm6/b;)V

    :cond_c
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_e

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    sget-object v1, Lcom/oplus/anim/m0;->AUTOMATIC:Lcom/oplus/anim/m0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Lcom/oplus/anim/m0;->values()[Lcom/oplus/anim/m0;

    move-result-object v3

    array-length v3, v3

    if-lt p2, v3, :cond_d

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :cond_d
    invoke-static {}, Lcom/oplus/anim/m0;->values()[Lcom/oplus/anim/m0;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setRenderMode(Lcom/oplus/anim/m0;)V

    :cond_e
    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_ignoreDisabledSystemAnimations:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_useCompositionFrameRate:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_f

    sget p2, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_useCompositionFrameRate:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setUseCompositionFrameRate(Z)V

    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ll6/h;->f(Landroid/content/Context;)F

    move-result p0

    cmpl-float p0, p0, v4

    if-eqz p0, :cond_10

    move v2, v0

    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/anim/o;->W0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic q(Ljava/lang/String;)Lcom/oplus/anim/r;
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic r(I)Lcom/oplus/anim/r;
    .locals 1

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/anim/f0;->u(Landroid/content/Context;I)Lcom/oplus/anim/r;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/f0;->v(Landroid/content/Context;ILjava/lang/String;)Lcom/oplus/anim/r;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic s(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Ll6/h;->k(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to load composition."

    invoke-static {v0, p0}, Ll6/e;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to parse composition"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setCompositionTask(Lcom/oplus/anim/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/t;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_ANIMATION:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->k()V

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->j()V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->b:Lcom/oplus/anim/p;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/t;->d(Lcom/oplus/anim/p;)Lcom/oplus/anim/t;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->c:Lcom/oplus/anim/p;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/t;->c(Lcom/oplus/anim/p;)Lcom/oplus/anim/t;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->q:Lcom/oplus/anim/t;

    return-void
.end method

.method private z()V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->t0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public g(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->p(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getClipToCompositionBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->F()Z

    move-result p0

    return p0
.end method

.method public getComposition()Lcom/oplus/anim/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->r:Lcom/oplus/anim/a;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->r:Lcom/oplus/anim/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/a;->d()F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->J()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->L()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->N()Z

    move-result p0

    return p0
.end method

.method public getMaxFrame()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->O()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->P()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/l0;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->Q()Lcom/oplus/anim/l0;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->R()F

    move-result p0

    return p0
.end method

.method public getRenderMode()Lcom/oplus/anim/m0;
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->S()Lcom/oplus/anim/m0;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->T()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->U()I

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->V()F

    move-result p0

    return p0
.end method

.method public h(Lf6/f;Ljava/lang/Object;Lm6/b;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/anim/o;->q(Lf6/f;Ljava/lang/Object;Lm6/b;)V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->PLAY_OPTION:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->t()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/anim/o;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->S()Lcom/oplus/anim/m0;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/m0;->SOFTWARE:Lcom/oplus/anim/m0;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    if-ne v0, v1, :cond_0

    invoke-super {p0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public l(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->z(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->m:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->q0()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_ANIMATION:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->b:I

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:I

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:I

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_PROGRESS:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->c:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->A(FZ)V

    :cond_3
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->PLAY_OPTION:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    :cond_4
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_IMAGE_ASSETS:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_REPEAT_MODE:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->i:I

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    :cond_6
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_REPEAT_COUNT:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget p1, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->j:I

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->a:Ljava/lang/String;

    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:I

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->b:I

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->R()F

    move-result v0

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->c:F

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->a0()Z

    move-result v0

    iput-boolean v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->f:Z

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->U()I

    move-result v0

    iput v0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->i:I

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->T()I

    move-result p0

    iput p0, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->j:I

    return-object v1
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->Z()Z

    move-result p0

    return p0
.end method

.method public setAnimation(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->n(I)Lcom/oplus/anim/t;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/t;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->k:I

    .line 6
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->m(Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/t;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/f0;->w(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/oplus/anim/f0;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/t;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->v0(Z)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->n:Z

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->w0(Z)V

    return-void
.end method

.method public setComposition(Lcom/oplus/anim/a;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->r:Lcom/oplus/anim/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/o;->x0(Lcom/oplus/anim/a;)Z

    move-result p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->z()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p0, p1}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->p:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->y0(Ljava/lang/String;)V

    return-void
.end method

.method public setFailureListener(Lcom/oplus/anim/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/p;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->f:Lcom/oplus/anim/p;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->h:I

    return-void
.end method

.method public setFontAssetDelegate(Lcom/oplus/anim/i0;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->z0(Lcom/oplus/anim/i0;)V

    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->A0(Ljava/util/Map;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->B0(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->C0(Z)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/oplus/anim/j0;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->D0(Lcom/oplus/anim/j0;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->E0(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->j()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->j()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->j()V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->F0(Z)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->G0(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->I0(F)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->K0(Ljava/lang/String;)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->L0(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->M0(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->N0(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->O0(Z)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->P0(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->A(FZ)V

    return-void
.end method

.method public setRenderMode(Lcom/oplus/anim/m0;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->R0(Lcom/oplus/anim/m0;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_REPEAT_COUNT:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->S0(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->SET_REPEAT_MODE:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->T0(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->U0(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->V0(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/oplus/anim/o0;)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->X0(Lcom/oplus/anim/o0;)V

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->Y0(Z)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/anim/o;->S0(I)V

    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->m:Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->p0()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/o;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->u()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->l:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/oplus/anim/o;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/oplus/anim/o;

    invoke-virtual {v0}, Lcom/oplus/anim/o;->Z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oplus/anim/o;->p0()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->PLAY_OPTION:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->q0()V

    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->o:Ljava/util/Set;

    sget-object v1, Lcom/oplus/anim/EffectiveAnimationView$b;->PLAY_OPTION:Lcom/oplus/anim/EffectiveAnimationView$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView;->i:Lcom/oplus/anim/o;

    invoke-virtual {p0}, Lcom/oplus/anim/o;->t0()V

    return-void
.end method

.method public x(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/oplus/anim/f0;->n(Ljava/io/InputStream;Ljava/lang/String;)Lcom/oplus/anim/t;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/t;)V

    return-void
.end method

.method public y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->x(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method
