.class public Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;
.super Lcom/coui/appcompat/preference/COUIPreferenceCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadingCategory"


# instance fields
.field private mLoadingText:Ljava/lang/String;

.field private mLoadingTextView:Landroid/widget/TextView;

.field private mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

.field private mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

.field private mWidgetLayoutAfterLoading:I

.field private mWidgetLayoutBeforeLoading:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->LOADING:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    sget-object v0, Lcom/support/preference/R$styleable;->COUILoadingPreferenceCategory:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/preference/R$styleable;->COUILoadingPreferenceCategory_coui_loading_after_layout:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutAfterLoading:I

    sget p2, Lcom/support/preference/R$styleable;->COUILoadingPreferenceCategory_coui_loading_before_layout:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutBeforeLoading:I

    sget p2, Lcom/support/preference/R$styleable;->COUILoadingPreferenceCategory_text_in_loading:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutBeforeLoading:I

    if-eqz p1, :cond_0

    sget-object p1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->BEFORE_LOADING:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLoadingType()Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    return-object p0
.end method

.method public hideLoading()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    sget-object v1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->AFTER_LOADING:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    if-ne v0, v1, :cond_0

    const-string p0, "LoadingCategory"

    const-string v0, "It is no longer loading state"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->INVISIBLE:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 4

    sget-object v0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$1;->$SwitchMap$com$coui$appcompat$preference$COUILoadingPreferenceCategory$LoadingType:[I

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutAfterLoading:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->setWidgetLayoutRes(I)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->onBindViewHolder(Landroidx/preference/l;)V

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->u()V

    goto :goto_0

    :cond_3
    sget v0, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_loading:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->setWidgetLayoutRes(I)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->onBindViewHolder(Landroidx/preference/l;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->getWidgetLayout()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/support/preference/R$id;->catagory_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->getWidgetLayout()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/support/preference/R$id;->text_in_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingTextView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    invoke-virtual {p1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingView:Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;

    invoke-virtual {p1}, Lcom/coui/appcompat/progressbar/COUICompProgressIndicator;->getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationView;->v()V

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutBeforeLoading:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->setWidgetLayoutRes(I)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->onBindViewHolder(Landroidx/preference/l;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public pauseLoading()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    sget-object v1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->AFTER_LOADING:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    if-ne v0, v1, :cond_0

    const-string p0, "LoadingCategory"

    const-string v0, "It is no longer loading state"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->PAUSE:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method protected rightTextfixSecondaryColor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingText:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShowAfterView()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutAfterLoading:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->setShowAfterView(I)V

    return-void
.end method

.method public setShowAfterView(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mWidgetLayoutAfterLoading:I

    .line 3
    sget-object p1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->AFTER_LOADING:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public startLoading()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    sget-object v1, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;->LOADING:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory;->mLoadingType:Lcom/coui/appcompat/preference/COUILoadingPreferenceCategory$LoadingType;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
