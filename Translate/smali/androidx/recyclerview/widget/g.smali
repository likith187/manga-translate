.class Landroidx/recyclerview/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static k:F = 0.0f

.field public static l:F = 0.15f


# instance fields
.field private a:Z

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

.field private i:Landroidx/dynamicanimation/animation/d;

.field private j:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Landroidx/recyclerview/widget/g;->d:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->h()V

    return-void
.end method

.method static synthetic a(Landroidx/recyclerview/widget/g;)I
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->g()I

    move-result p0

    return p0
.end method

.method static synthetic b(Landroidx/recyclerview/widget/g;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/g;->l(F)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget-object v1, p0, Landroidx/recyclerview/widget/g;->i:Landroidx/dynamicanimation/animation/d;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    new-instance v0, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;-><init>()V

    sget v1, Landroidx/recyclerview/widget/g;->k:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setBounce(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    sget v1, Landroidx/recyclerview/widget/g;->l:F

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;->setResponse(F)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;

    iget-object p0, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->setSpring(Lcom/coui/appcompat/animation/dynamicanimation/COUISpringForce;)Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/g;->j(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->d()V

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Landroidx/recyclerview/widget/g;->e:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p0, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    :cond_0
    return-void
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/g;->g:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->d()V

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget v0, p0, Landroidx/recyclerview/widget/g;->e:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;->setStartValue(F)Lcom/coui/appcompat/animation/dynamicanimation/COUIDynamicAnimation;

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->h:Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;

    iget p0, p0, Landroidx/recyclerview/widget/g;->f:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/animation/dynamicanimation/COUISpringAnimation;->animateToFinalPosition(F)V

    :cond_0
    return-void
.end method

.method private g()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/g;->e:I

    return p0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g;->m(Z)V

    return-void
.end method

.method private j(FF)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p1

    instance-of p1, p1, Landroidx/preference/h;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object p0

    check-cast p0, Landroidx/preference/h;

    invoke-virtual {p0, p1}, Landroidx/preference/h;->i(I)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/View;

    instance-of p1, p0, Landroidx/recyclerview/widget/n;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/recyclerview/widget/n;

    invoke-interface {p0}, Landroidx/recyclerview/widget/n;->getItemEnabled()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private l(F)V
    .locals 0

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->e:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->n()V

    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/COUIRecyclerView$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/recyclerview/widget/g;->j:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView$a;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->setPressDividerPos(I)V

    iget v2, p0, Landroidx/recyclerview/widget/g;->e:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView$a;->setPressDividerAlpha(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected c(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/g;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroidx/recyclerview/widget/g;->g:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/g;->c:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/g;->e(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/g;->f(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/g;->f(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/g;->c:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/g;->d:I

    if-le v0, v1, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/g;->g:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/g;->f(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected i(Landroid/view/View;I)Z
    .locals 1

    iget-boolean p1, p0, Landroidx/recyclerview/widget/g;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    :cond_0
    return v0
.end method

.method protected k(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/g;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/g;->f(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected m(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/g;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->f:I

    iput p1, p0, Landroidx/recyclerview/widget/g;->e:I

    iget-object p1, p0, Landroidx/recyclerview/widget/g;->i:Landroidx/dynamicanimation/animation/d;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/g$a;

    const-string v0, "dividerAlpha"

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/g$a;-><init>(Landroidx/recyclerview/widget/g;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/g;->i:Landroidx/dynamicanimation/animation/d;

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->d()V

    :cond_1
    return-void
.end method
