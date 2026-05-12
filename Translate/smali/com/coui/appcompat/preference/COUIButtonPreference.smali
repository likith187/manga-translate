.class public Lcom/coui/appcompat/preference/COUIButtonPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mDrawableColor:I

.field private mListener:Landroid/view/View$OnClickListener;

.field private mOnButtonClickListener:Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUIButtonPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Lcom/coui/appcompat/preference/COUIButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIButtonPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIButtonPreference;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mListener:Landroid/view/View$OnClickListener;

    .line 6
    sget-object v0, Lcom/support/preference/R$styleable;->COUIButtonPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/support/preference/R$styleable;->COUIButtonPreference_btnText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mText:Ljava/lang/CharSequence;

    .line 8
    sget p2, Lcom/support/preference/R$styleable;->COUIButtonPreference_btnTextSize:I

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextSize:I

    .line 9
    sget p2, Lcom/support/preference/R$styleable;->COUIButtonPreference_btnTextColor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextColor:I

    .line 10
    sget p2, Lcom/support/preference/R$styleable;->COUIButtonPreference_btnDrawableColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mDrawableColor:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIButtonPreference;)Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mOnButtonClickListener:Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;

    return-object p0
.end method


# virtual methods
.method public getBtnText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDrawableColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mDrawableColor:I

    return p0
.end method

.method public getTextColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextColor:I

    return p0
.end method

.method public getTextSize()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextSize:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/support/preference/R$id;->coui_btn:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/button/COUIButton;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->getBtnText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->getTextSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->getTextColor()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->getDrawableColor()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIButtonPreference;->getDrawableColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->setDrawableColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setBtnText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDrawableColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mDrawableColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mDrawableColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mOnButtonClickListener:Lcom/coui/appcompat/preference/COUIButtonPreference$OnButtonClickListener;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIButtonPreference;->mTextSize:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
