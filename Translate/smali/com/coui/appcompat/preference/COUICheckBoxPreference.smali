.class public final Lcom/coui/appcompat/preference/COUICheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/COUIRecyclerView$b;


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field private mCheckBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private mContext:Landroid/content/Context;

.field private mDividerDefaultHorizontalPadding:I

.field private mItemView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUICheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/preference/R$attr;->couiCheckBoxPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/preference/R$style;->Preference_COUI_COUICheckBoxPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUICheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mDividerDefaultHorizontalPadding:I

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/support/preference/R$styleable;->COUIPreference:[I

    .line 9
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context!!.obtainStyledAt\u2026tr, defStyleRes\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget v1, Lcom/support/preference/R$styleable;->COUIPreference_couiAssignmentColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignmentColor:I

    .line 11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    sget-object v0, Lcom/support/preference/R$styleable;->COUICheckBoxPreference:[I

    .line 13
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026    defStyleRes\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget p2, Lcom/support/preference/R$styleable;->COUICheckBoxPreference_couiCheckBoxAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignment:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final synthetic access$getMCheckBox$p(Lcom/coui/appcompat/preference/COUICheckBoxPreference;)Lcom/coui/appcompat/checkbox/COUICheckBox;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mCheckBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-object p0
.end method

.method public static synthetic j(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->onBindViewHolder$lambda$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final onBindViewHolder$lambda$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x12e

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public drawDivider()Z
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mItemView:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public bridge synthetic getDividerEndAlignView()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$b;->getDividerEndAlignView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDividerEndInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/l;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mItemView:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUICheckBoxPreference$onBindViewHolder$1;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :goto_1
    if-eqz p1, :cond_2

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/widget/TextView;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v0

    :goto_4
    instance-of v2, v1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    :cond_5
    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mCheckBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_6
    if-eqz p1, :cond_8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/coui/appcompat/preference/a;

    invoke-direct {v1}, Lcom/coui/appcompat/preference/a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignment:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignmentColor:I

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->bindAssignmentView(Landroidx/preference/l;Ljava/lang/CharSequence;I)V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->getPositionInGroup(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->setItemCardBackground(Landroid/view/View;I)V

    return-void
.end method

.method public final setAssignment(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "assignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setAssignmentColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignmentColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->mAssignmentColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
