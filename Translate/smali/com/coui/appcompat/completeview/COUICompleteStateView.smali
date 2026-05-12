.class public final Lcom/coui/appcompat/completeview/COUICompleteStateView;
.super Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/completeview/COUICompleteStateView$Companion;
    }
.end annotation


# static fields
.field public static final COMPLETE_TYPE_DEFAULT:I = 0x0

.field public static final COMPLETE_TYPE_FAILED:I = 0x2

.field public static final COMPLETE_TYPE_SUCCESS:I = 0x1

.field public static final COMPLETE_TYPE_WAIT:I = 0x3

.field public static final Companion:Lcom/coui/appcompat/completeview/COUICompleteStateView$Companion;


# instance fields
.field private final animView$delegate:Ln8/j;

.field private autoPlay:Z

.field private completeType:I

.field private final failedAnimRes:I

.field private rawAnimRes:I

.field private final subTitle$delegate:Ln8/j;

.field private subtitleText:Ljava/lang/String;

.field private final successAnimRes:I

.field private final title$delegate:Ln8/j;

.field private titleText:Ljava/lang/String;

.field private final waitAnimRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/completeview/COUICompleteStateView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/completeview/COUICompleteStateView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->Companion:Lcom/coui/appcompat/completeview/COUICompleteStateView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/completeview/COUICompleteStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/completeview/COUICompleteStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/completeview/COUICompleteStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    sget v0, Lcom/support/component/R$raw;->complete_page_success_anim:I

    iput v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->successAnimRes:I

    .line 7
    sget v0, Lcom/support/component/R$raw;->complete_page_fail_anim:I

    iput v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->failedAnimRes:I

    .line 8
    sget v0, Lcom/support/component/R$raw;->complete_page_wait_anim:I

    iput v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->waitAnimRes:I

    .line 9
    new-instance v0, Lcom/coui/appcompat/completeview/COUICompleteStateView$title$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView$title$2;-><init>(Lcom/coui/appcompat/completeview/COUICompleteStateView;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->title$delegate:Ln8/j;

    .line 10
    new-instance v0, Lcom/coui/appcompat/completeview/COUICompleteStateView$subTitle$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView$subTitle$2;-><init>(Lcom/coui/appcompat/completeview/COUICompleteStateView;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->subTitle$delegate:Ln8/j;

    .line 11
    new-instance v0, Lcom/coui/appcompat/completeview/COUICompleteStateView$animView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView$animView$2;-><init>(Lcom/coui/appcompat/completeview/COUICompleteStateView;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->animView$delegate:Ln8/j;

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 14
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/component/R$layout;->coui_component_complete_state:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    sget-object v1, Lcom/support/component/R$styleable;->COUICompleteStateView:[I

    .line 16
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcom/support/component/R$styleable;->COUICompleteStateView_anim_autoPlay:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->autoPlay:Z

    .line 18
    sget p2, Lcom/support/component/R$styleable;->COUICompleteStateView_titleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->titleText:Ljava/lang/String;

    .line 19
    sget p2, Lcom/support/component/R$styleable;->COUICompleteStateView_subtitleText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->subtitleText:Ljava/lang/String;

    .line 21
    sget p2, Lcom/support/component/R$styleable;->COUICompleteStateView_anim_rawRes:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 22
    invoke-direct {p0, p2}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->updateAnimRes(I)V

    goto :goto_0

    .line 23
    :cond_0
    sget p2, Lcom/support/component/R$styleable;->COUICompleteStateView_completeType:I

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->setCompleteType(I)V

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->titleText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getSubTitle()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->subtitleText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/completeview/COUICompleteStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final getAnimView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->animView$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-animView>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method private final getSubTitle()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->subTitle$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-subTitle>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private final getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->title$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-title>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private final updateAnimRes(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->rawAnimRes:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    return-object p0
.end method

.method public final getAutoPlay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->autoPlay:Z

    return p0
.end method

.method public final getCompleteType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->completeType:I

    return p0
.end method

.method public final getSubtitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->subtitleText:Ljava/lang/String;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->autoPlay:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->playAnimatorRes()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->i()V

    :cond_0
    return-void
.end method

.method public final playAnimatorRes()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->i()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->rawAnimRes:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->rawAnimRes:I

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getAnimView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    :cond_1
    return-void
.end method

.method public final setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->autoPlay:Z

    return-void
.end method

.method public final setCompleteType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->completeType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->completeType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->waitAnimRes:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->updateAnimRes(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->failedAnimRes:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->updateAnimRes(I)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->successAnimRes:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->updateAnimRes(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getSubTitle()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setSubtitleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/completeview/COUICompleteStateView;->subtitleText:Ljava/lang/String;

    return-void
.end method

.method public final setTitleText(I)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/completeview/COUICompleteStateView;->getTitle()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
