.class public Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/tooltips/COUIIBubbleStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;
    }
.end annotation


# instance fields
.field private mAnimResId:I

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDefStyleParams:[I

.field private mDismissText:Ljava/lang/CharSequence;

.field private mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageResId:I

.field private mIvImage:Landroid/widget/ImageView;

.field private mMediaResourceWithEdges:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mToolTipsAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

.field private mTvDismiss:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDefStyleParams:[I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mMediaResourceWithEdges:Z

    .line 5
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$000(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mMediaResourceWithEdges:Z

    .line 6
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$100(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mAnimResId:I

    .line 7
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$200(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageResId:I

    .line 8
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$300(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$400(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 10
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$500(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTitle:Ljava/lang/CharSequence;

    .line 11
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$600(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    .line 12
    invoke-static {p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;->access$700(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDismissText:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;-><init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$Builder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)Lcom/coui/appcompat/tooltips/IToolTipsAction;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mToolTipsAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

    return-object p0
.end method

.method private setMediaViewVisibility(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public dismissWindow()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->i()V

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDefStyleParams()[I
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDefStyleParams:[I

    const/4 v0, 0x0

    sget v1, Lcom/support/tips/R$attr;->couiToolTipsImageStyle:I

    aput v1, p0, v0

    const/4 v0, 0x1

    sget v1, Lcom/support/tips/R$style;->COUIToolTips_Image:I

    aput v1, p0, v0

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mMediaResourceWithEdges:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/support/tips/R$layout;->coui_tool_tips_image_with_edges_style_layout:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/support/tips/R$layout;->coui_tool_tips_image_no_edges_style_layout:I

    :goto_0
    return p0
.end method

.method public getMaxWidth()I
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/tips/R$dimen;->tool_tips_image_style_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getRealWidth(ILandroid/view/ViewGroup;)I
    .locals 0

    return p1
.end method

.method public initBubbleStyle(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/support/tips/R$styleable;->COUIToolTips:[I

    iget-object v2, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDefStyleParams:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    aget v2, v2, v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/tips/R$styleable;->COUIToolTips_couiToolTipsContentTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lcom/support/tips/R$id;->iv_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    sget v0, Lcom/support/tips/R$id;->eav_anim:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/support/tips/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvTitle:Landroid/widget/TextView;

    sget v0, Lcom/support/tips/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    sget v0, Lcom/support/tips/R$id;->contentTv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    sget v0, Lcom/support/tips/R$id;->tv_dismiss:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    iget-boolean p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mMediaResourceWithEdges:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;-><init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageResId:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v5, v3}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v5, v3}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v5, v3}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mAnimResId:I

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v5}, Lcom/oplus/anim/EffectiveAnimationView;->t(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    invoke-direct {p0, v3, v5}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3, v3}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDismissText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDismissText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$2;-><init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    return-void
.end method

.method public loadAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->t(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mEavAnim:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mAnimResId:I

    :goto_0
    return-void
.end method

.method public loadImage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageResId:I

    :goto_0
    return-void
.end method

.method public loadImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public loadImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mIvImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setMediaViewVisibility(ZZ)V

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public refreshBubbleStyle(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setContentTextColor(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->setContentTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setContentTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setDismissText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mDismissText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setToolTipsAction(Lcom/coui/appcompat/tooltips/IToolTipsAction;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mToolTipsAction:Lcom/coui/appcompat/tooltips/IToolTipsAction;

    iput-object p2, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public sizeBubbleStyle(Landroid/view/ViewGroup;I)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->mTvDismiss:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
