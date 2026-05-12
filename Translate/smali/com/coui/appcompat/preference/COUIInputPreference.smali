.class public Lcom/coui/appcompat/preference/COUIInputPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;,
        Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;
    }
.end annotation


# instance fields
.field private mContent:Ljava/lang/CharSequence;

.field private mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

.field private mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

.field private mPreferenceView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiInputPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUIInputPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    sget-object v0, Lcom/support/preference/R$styleable;->COUIInputPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 6
    sget v1, Lcom/support/preference/R$styleable;->COUIInputPreference_couiContent:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    .line 7
    sget v1, Lcom/support/preference/R$styleable;->COUIInputPreference_couiJustShowFocusLine:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    sget-object v0, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 10
    sget p4, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mTitle:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    new-instance p3, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-direct {p3, p1, p2}, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    const p1, 0x1020009

    .line 13
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUIInputView;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    .line 16
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;->setJustShowFocusLine(Z)V

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->isErrorState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/coui/appcompat/preference/COUIPreference;->drawDivider()Z

    move-result p0

    return p0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEditText()Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    return-object p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIInputView;->getHint()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getInputView()Lcom/coui/appcompat/edittext/COUIInputView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    return-object p0
.end method

.method public getPreferenceView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mPreferenceView:Landroid/view/View;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mPreferenceView:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->consumeDispatchingEventForState(Z)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mPreferenceView:Landroid/view/View;

    sget v0, Lcom/support/preference/R$id;->edittext_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    const v0, 0x1020009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->refresh()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIInputView;->getEditText()Lcom/coui/appcompat/edittext/COUIEditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setBoxBackgroundMode(I)V

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/edittext/COUIInputView;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIInputPreference;->setContent(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/preference/COUIInputPreference$SavedState;->mText:Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIInputPreference;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setCouiEditTexttNoEllipsisText(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->shouldDisableDependents()Z

    move-result v0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->shouldDisableDependents()Z

    move-result p1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    :cond_3
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mInputView:Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUIInputView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference;->mContent:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
