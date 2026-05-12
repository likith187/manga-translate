.class public Lcom/coui/appcompat/preference/COUIPagerFooterPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mIsEnableClickSpan:Z

.field private mWithExtraMarginBottom:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mWithExtraMarginBottom:Z

    sget v0, Lcom/support/preference/R$layout;->coui_pager_footer_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object v0, Lcom/support/preference/R$styleable;->COUIPagerFooterPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/support/preference/R$styleable;->COUIPagerFooterPreference_withExtraMarginBottom:I

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mWithExtraMarginBottom:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mWithExtraMarginBottom:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/support/preference/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/preference/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mIsEnableClickSpan:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mWithExtraMarginBottom:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/preference/R$dimen;->support_preference_footer_preference_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->setSummaryView(Landroid/content/Context;Landroidx/preference/l;)V

    :cond_2
    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mIsEnableClickSpan:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPagerFooterPreference;->mIsEnableClickSpan:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
