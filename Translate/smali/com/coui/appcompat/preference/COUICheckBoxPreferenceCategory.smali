.class public Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;
.super Lcom/coui/appcompat/preference/COUIPreferenceCategory;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckBoxCategory"


# instance fields
.field private mDefaultCheckboxState:I

.field private mOnStateChangeListener:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;->mDefaultCheckboxState:I

    sget-object v1, Lcom/support/preference/R$styleable;->COUICheckBoxPreferenceCategory:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/preference/R$styleable;->COUICheckBoxPreferenceCategory_default_checkbox_state:I

    iget v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;->mDefaultCheckboxState:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;->mDefaultCheckboxState:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 1

    sget v0, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_checkbox:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->setWidgetLayoutRes(I)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->onBindViewHolder(Landroidx/preference/l;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->getWidgetLayout()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;->mDefaultCheckboxState:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;->mOnStateChangeListener:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreferenceCategory;->mOnStateChangeListener:Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;

    return-void
.end method

.method public setWidgetLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    const-string p0, "CheckBoxCategory"

    const-string p1, "set Widget Layout Click Listener does not take effect in the COUICheckBoxPreferenceCategory setting, please set setOnStateChangeListener"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
