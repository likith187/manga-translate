.class public Lcom/coui/appcompat/preference/COUISlideSelectPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# static fields
.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final NORMAL:I


# instance fields
.field private mClickStyle:I

.field mContext:Landroid/content/Context;

.field mSelectionText:Ljava/lang/CharSequence;

.field private mStatus1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiSlideSelectPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUISelectPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISlideSelectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mClickStyle:I

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mContext:Landroid/content/Context;

    .line 7
    sget-object v0, Lcom/support/preference/R$styleable;->COUISlideSelectPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/support/preference/R$styleable;->COUISlideSelectPreference_coui_select_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSelectionText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/support/preference/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v2, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mClickStyle:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_2
    :goto_0
    sget v0, Lcom/support/preference/R$id;->coui_statusText_select:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mStatus1:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSelectionText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setStatusText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISlideSelectPreference;->mSelectionText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method
