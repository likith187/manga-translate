.class public abstract Lcom/coui/appcompat/tips/COUICustomTopTips;
.super Lcom/coui/appcompat/cardview/COUICardView;
.source "SourceFile"


# instance fields
.field private mAnimatorDismissListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

.field private mAnimatorSetShow:Landroid/animation/AnimatorSet;

.field private mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/cardview/COUICardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/tips/COUICustomTopTips;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorDismissListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method


# virtual methods
.method public dismissWithAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "scaleY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/tips/COUICustomTopTips$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tips/COUICustomTopTips$2;-><init>(Lcom/coui/appcompat/tips/COUICustomTopTips;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getAnimatorSetDismiss()Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getAnimatorSetShow()Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetShow:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mView:Landroid/view/View;

    return-object p0
.end method

.method public abstract getContentViewId()I
.end method

.method protected init()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tips/COUICustomTopTips;->setContentView(I)V

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setRadius(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerMWeight:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setWeight(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setRadius(F)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorFillThin:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/cardview/COUICardView;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setAnimatorDismissListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorDismissListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setAnimatorSetDismiss(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetDismiss:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimatorSetShow(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetShow:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setAnimatorShowListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorShowListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tips/COUICustomTopTips;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Repeat calls are not allowed!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showWithAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetShow:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "scaleY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetShow:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetShow:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/tips/COUICustomTopTips$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/tips/COUICustomTopTips$1;-><init>(Lcom/coui/appcompat/tips/COUICustomTopTips;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/tips/COUICustomTopTips;->mAnimatorSetShow:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
