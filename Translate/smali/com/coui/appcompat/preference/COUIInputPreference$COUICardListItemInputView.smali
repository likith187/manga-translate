.class public Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;
.super Lcom/coui/appcompat/edittext/COUIInputView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/preference/COUIInputPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUICardListItemInputView"
.end annotation


# instance fields
.field mJustShowFocusLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;->mJustShowFocusLine:Z

    return-void
.end method


# virtual methods
.method protected getCouiInputPreferenceEditTextLayoutId()I
    .locals 0

    sget p0, Lcom/support/preference/R$layout;->coui_preference_scrollededittext:I

    return p0
.end method

.method protected getEdittextPaddingBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_input_edit_text_no_title_padding_bottom_inPreference:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_edit_error_text_has_title_padding_bottom:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getEdittextPaddingTop()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/input/R$dimen;->coui_input_edit_text_no_title_padding_top_inPreference:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/input/R$dimen;->coui_input_edit_text_has_title_padding_top:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected instanceCOUIEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/coui/appcompat/edittext/COUIEditText;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;->getCouiInputPreferenceEditTextLayoutId()I

    move-result p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setShowDeleteIcon(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-object p0
.end method

.method protected isIsCardSingleInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setJustShowFocusLine(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;->mJustShowFocusLine:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIInputPreference$COUICardListItemInputView;->mJustShowFocusLine:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIInputView;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setJustShowFocusLine(Z)V

    :cond_0
    return-void
.end method
