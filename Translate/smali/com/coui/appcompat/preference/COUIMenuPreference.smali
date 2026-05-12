.class public Lcom/coui/appcompat/preference/COUIMenuPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "COUIMenuPreference"


# instance fields
.field private mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

.field private mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

.field private mEnableAddExtraWdith:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mGroupIds:[I

.field private mHelperEnabled:Z

.field private final mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mMaxShowItemCount:I

.field private mPopInputMethod:I

.field private mPopupListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectItemColor:Landroid/content/res/ColorStateList;

.field private mSummary:Ljava/lang/String;

.field private mUseBackgroundBlur:Z

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 22
    sget v0, Lcom/support/preference/R$attr;->couiMenuPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p4, Lcom/coui/appcompat/preference/COUIMenuPreference$1;

    invoke-direct {p4, p0}, Lcom/coui/appcompat/preference/COUIMenuPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIMenuPreference;)V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    const/4 p4, 0x1

    .line 5
    iput-boolean p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mHelperEnabled:Z

    .line 6
    iput-boolean p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEnableAddExtraWdith:Z

    const/4 p4, -0x1

    .line 7
    iput p4, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mMaxShowItemCount:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mUseBackgroundBlur:Z

    .line 9
    sget-object v1, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    .line 10
    sget-object v1, Lcom/support/preference/R$styleable;->COUIMenuPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget p3, Lcom/support/preference/R$styleable;->COUIMenuPreference_android_entryValues:I

    invoke-static {p2, p3, p3}, Lt/k;->o(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 12
    sget p3, Lcom/support/preference/R$styleable;->COUIMenuPreference_android_entries:I

    invoke-static {p2, p3, p3}, Lt/k;->o(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 13
    sget p3, Lcom/support/preference/R$styleable;->COUIMenuPreference_maxShowItemCount:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mMaxShowItemCount:I

    .line 14
    sget p3, Lcom/support/preference/R$styleable;->COUIMenuPreference_popInputMethod:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopInputMethod:I

    .line 15
    sget p3, Lcom/support/preference/R$styleable;->COUIMenuPreference_groupIds:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mGroupIds:[I

    .line 17
    :cond_0
    sget p1, Lcom/support/preference/R$styleable;->COUIMenuPreference_android_value:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValue:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIMenuPreference;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIMenuPreference;)Lcom/coui/appcompat/poplist/COUIClickSelectMenu;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    return-object p0
.end method

.method private getValueIndex()I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$f;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSummary:Ljava/lang/String;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "COUIMenuPreference"

    const-string v1, "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mUseBackgroundBlur:Z

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopInputMethod:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSelectItemColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->registerForClickSelectItems(Landroid/view/View;Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->registerForClickSelectItems(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEnableAddExtraWdith:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setEnableAddExtraWidth(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mHelperEnabled:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setHelperEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mMaxShowItemCount:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setMaxShowItemCount(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/preference/COUIMenuPreference$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference$2;-><init>(Lcom/coui/appcompat/preference/COUIMenuPreference;Landroidx/preference/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

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

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValueSet:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
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
    new-instance v1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/preference/COUIMenuPreference$SavedState;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setBlurMinAnimLevel(Lcom/coui/appcompat/uiutil/AnimLevel;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mUseBackgroundBlur:Z

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    :cond_0
    return-void
.end method

.method public setEnableAddExtraWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEnableAddExtraWdith:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setMenuShowEnabled(Z)V

    return-void
.end method

.method public setEntries(I)V
    .locals 1

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntries:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValueSet:Z

    if-eqz p1, :cond_1

    .line 3
    array-length v1, p1

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    new-instance v1, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    .line 6
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 7
    aget-object v2, p1, v0

    .line 8
    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v2}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mGroupIds:[I

    if-eqz v3, :cond_0

    aget v3, v3, v0

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    .line 11
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValueSet:Z

    .line 3
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    new-instance v1, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    .line 6
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 7
    aget-object v2, p1, v0

    .line 8
    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->reset()Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v2}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setTitle(Ljava/lang/String;)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mGroupIds:[I

    if-eqz v3, :cond_0

    aget v3, v3, v0

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->setGroupId(I)Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    .line 11
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->build()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxShowItemCount(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mMaxShowItemCount:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mMaxShowItemCount:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setMenuItemSelectColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSelectItemColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setMenuShow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setPopupState(Z)V

    :cond_0
    return-void
.end method

.method public setMenuShowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mHelperEnabled:Z

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->setHelperEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    return-void
.end method

.method public setPopInputMethod(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopInputMethod:I

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopInputMethod:I

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    :cond_0
    return-void
.end method

.method public setPopupList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSummary:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mSummary:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setUseBackgroundBlur(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mUseBackgroundBlur:Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mCouiClickSelectMenu:Lcom/coui/appcompat/poplist/COUIClickSelectMenu;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIClickSelectMenu;->getPopup()Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mUseBackgroundBlur:Z

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValueSet:Z

    if-nez v0, :cond_4

    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValue:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mValueSet:Z

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mPopupListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v3}, Lcom/coui/appcompat/poplist/PopupListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    goto :goto_1

    :cond_1
    move-object v5, p1

    :goto_1
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/poplist/PopupListItem;->setChecked(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v1}, Lcom/coui/appcompat/poplist/PopupListItem;->setChecked(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMenuPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
