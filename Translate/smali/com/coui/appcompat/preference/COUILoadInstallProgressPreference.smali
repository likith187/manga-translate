.class public Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;
    }
.end annotation


# instance fields
.field private final mDisabledColor:I

.field private mInstallBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field private mInstallProgressTextColor:I

.field private mListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

.field private mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

.field private mMax:I

.field private mOnStateChangeListener:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;

.field private mProgress:I

.field private mProgressBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field private mProgressText:Ljava/lang/CharSequence;

.field private mProgressTextColorStateList:Landroid/content/res/ColorStateList;

.field private mProgressTextSize:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiLoadInstallProgressPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUILoadInstallProgressPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$1;-><init>(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressText:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_color_disabled_neutral:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mDisabledColor:I

    .line 8
    sget-object v1, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    sget p3, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference_progressText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressText:Ljava/lang/CharSequence;

    .line 10
    sget p3, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference_progressTextSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_textsize:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextSize:I

    .line 11
    sget p1, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference_progressTextColor:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 12
    sget p4, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference_backgroundColor:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 13
    sget v1, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference_installBackgroundColor:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 14
    sget v2, Lcom/support/preference/R$styleable;->COUILoadInstallProgressPreference_installProgressTextColor:I

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallProgressTextColor:I

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p1, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextColorStateList:Landroid/content/res/ColorStateList;

    :cond_0
    if-eqz p4, :cond_1

    .line 17
    invoke-static {p4, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressBackgroundColorStateList:Landroid/content/res/ColorStateList;

    :cond_1
    if-eqz v1, :cond_2

    .line 18
    invoke-static {v1, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallBackgroundColorStateList:Landroid/content/res/ColorStateList;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;)Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mOnStateChangeListener:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mState:I

    return p1
.end method

.method private getInstallProgressTextColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallProgressTextColor:I

    return p0
.end method


# virtual methods
.method public getLoadProgressView()Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    return-object p0
.end method

.method public getMax()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getMax()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getProgress()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getProgressText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getProgressTextSize()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextSize:I

    return p0
.end method

.method public getState()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->getState()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/support/preference/R$id;->coui_load_progress:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->getProgressText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->getProgressTextSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setDefaultTextSize(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextColorStateList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setBtnTextColorStateList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressBackgroundColorStateList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeSecondaryColorStateList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallBackgroundColorStateList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeColorStateList(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->getInstallProgressTextColor()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->getInstallProgressTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setBtnTextColorBySurpassProgress(I)V

    :cond_3
    iget p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mMax:I

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setMax(I)V

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgress:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mState:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mListener:Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setOnStateChangeListener(Lcom/coui/appcompat/progressbar/COUILoadProgress$OnStateChangeListener;)V

    :cond_5
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mDisabledColor:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setInstallBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mDisabledColor:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setInstallProgressTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallProgressTextColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mInstallProgressTextColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mMax:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mMax:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mOnStateChangeListener:Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference$OnStateChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgress:I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setProgressText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressText:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mDisabledColor:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/statelistutil/COUIStateListUtil;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgressTextSize(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mProgressTextSize:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mState:I

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadInstallProgressPreference;->mLoadProgress:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    :cond_0
    return-void
.end method
