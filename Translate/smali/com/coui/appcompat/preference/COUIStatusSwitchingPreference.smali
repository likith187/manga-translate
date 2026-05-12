.class public Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# static fields
.field private static final STATUS_TYPE_ANIM:I = 0x1

.field private static final STATUS_TYPE_DEFAULT:I = 0x0

.field private static final STATUS_TYPE_IMAGE:I = 0x3

.field private static final STATUS_TYPE_TEXT:I = 0x2


# instance fields
.field private mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mAnimViewHeight:I

.field private mAnimViewWidth:I

.field private mCurrentType:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mRawResId:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextView:Lcom/coui/appcompat/textview/COUITextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiStatusSwitchingPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mCurrentType:I

    const/4 p1, -0x2

    .line 6
    iput p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimViewWidth:I

    .line 7
    iput p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimViewHeight:I

    return-void
.end method

.method private executePlayAnim()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mTextView:Lcom/coui/appcompat/textview/COUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->setAnimViewSize()V

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->playAnimView()V

    :cond_0
    return-void
.end method

.method private executeShowImage()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->stopAnim()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mTextView:Lcom/coui/appcompat/textview/COUITextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private executeShowText()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mTextView:Lcom/coui/appcompat/textview/COUITextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->stopAnim()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mTextView:Lcom/coui/appcompat/textview/COUITextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mTextView:Lcom/coui/appcompat/textview/COUITextView;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private playAnimView()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->stopAnim()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mRawResId:I

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->t(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    return-void
.end method

.method private setAnimViewSize()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimViewWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/support/preference/R$id;->coui_anim:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimView:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/support/preference/R$id;->coui_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/textview/COUITextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mTextView:Lcom/coui/appcompat/textview/COUITextView;

    sget v0, Lcom/support/preference/R$id;->coui_image:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImageView:Landroid/widget/ImageView;

    iget p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mCurrentType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->executeShowImage()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->executeShowText()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->executePlayAnim()V

    :goto_0
    return-void
.end method

.method public showAnim(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mCurrentType:I

    .line 2
    iput p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mRawResId:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public showAnim(III)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mCurrentType:I

    .line 5
    iput p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mRawResId:I

    .line 6
    iput p2, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimViewWidth:I

    .line 7
    iput p3, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mAnimViewHeight:I

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public showIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImage:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mCurrentType:I

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public showText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mCurrentType:I

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIStatusSwitchingPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
