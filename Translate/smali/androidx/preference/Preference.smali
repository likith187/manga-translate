.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$e;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$f;,
        Landroidx/preference/Preference$b;,
        Landroidx/preference/Preference$d;,
        Landroidx/preference/Preference$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLIPBOARD_ID:Ljava/lang/String; = "Preference"

.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCopyingEnabled:Z

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroidx/preference/Preference$b;

.field private mOnChangeListener:Landroidx/preference/Preference$c;

.field private mOnClickListener:Landroidx/preference/Preference$d;

.field private mOnCopyListener:Landroidx/preference/Preference$e;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroidx/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroidx/preference/e;

.field private mPreferenceManager:Landroidx/preference/j;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryProvider:Landroidx/preference/Preference$f;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Lt/k;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 5
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 6
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 7
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 8
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 9
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 10
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 11
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 12
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 13
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 14
    sget v3, Landroidx/preference/R$layout;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 15
    new-instance v3, Landroidx/preference/Preference$a;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$a;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 16
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 17
    sget-object v3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Landroidx/preference/R$styleable;->Preference_icon:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Lt/k;->l(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 19
    sget p2, Landroidx/preference/R$styleable;->Preference_key:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Lt/k;->m(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 20
    sget p2, Landroidx/preference/R$styleable;->Preference_title:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Lt/k;->n(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 21
    sget p2, Landroidx/preference/R$styleable;->Preference_summary:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Lt/k;->n(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 22
    sget p2, Landroidx/preference/R$styleable;->Preference_order:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Lt/k;->d(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mOrder:I

    .line 23
    sget p2, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Lt/k;->m(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 24
    sget p2, Landroidx/preference/R$styleable;->Preference_layout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_layout:I

    sget p4, Landroidx/preference/R$layout;->preference:I

    invoke-static {p1, p2, p3, p4}, Lt/k;->l(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 25
    sget p2, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Lt/k;->l(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 26
    sget p2, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 27
    sget p2, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 28
    sget p2, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 29
    sget p2, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Lt/k;->m(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 30
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 31
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 32
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    sget p2, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 37
    invoke-static {p1, p2, p3, v2}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 38
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p2, :cond_2

    .line 39
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 40
    :cond_2
    sget p2, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 41
    sget p2, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p2, v2}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 42
    sget p2, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    invoke-static {p1, p2, p2, v1}, Lt/k;->b(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v0, p0}, Landroidx/preference/Preference;->c(Landroidx/preference/Preference;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private d(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->d(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/j;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Landroidx/preference/Preference;->g(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private g(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$c;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

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

.method final clearWasDetached()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2

    .line 2
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-nez v0, :cond_3

    const/4 p0, -0x1

    return p0

    .line 4
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getId()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getLayoutResource()I
    .locals 0

    iget p0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return p0
.end method

.method public getOnPreferenceChangeListener()Landroidx/preference/Preference$c;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$c;

    return-object p0
.end method

.method public getOnPreferenceClickListener()Landroidx/preference/Preference$d;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$d;

    return-object p0
.end method

.method public getOrder()I
    .locals 0

    iget p0, p0, Landroidx/preference/Preference;->mOrder:I

    return p0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object p0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getPersistedFloat(F)F
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method protected getPersistedInt(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getPersistedLong(J)J
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceDataStore()Landroidx/preference/e;
    .locals 1

    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/j;->h()Landroidx/preference/e;

    :cond_0
    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/j;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    return-object p0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object p0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {p0}, Landroidx/preference/j;->j()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShouldDisableView()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$f;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$f;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$f;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getWidgetLayoutResource()I
    .locals 0

    iget p0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return p0
.end method

.method public hasKey()Z
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCopyingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIconSpaceReserved()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    return p0
.end method

.method public isPersistent()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return p0
.end method

.method public isSelectable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return p0
.end method

.method public final isShown()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/j;->i()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->isShown()Z

    move-result p0

    return p0
.end method

.method public isSingleLineTitle()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mVisible:Z

    return p0
.end method

.method protected notifyChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$b;->b(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$b;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/Preference;->b()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/j;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    .line 2
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/preference/j;->d()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->a()V

    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/j;J)V
    .locals 0

    .line 5
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    const/4 p2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 9
    throw p1
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 8

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move-object v1, v4

    :goto_0
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v6, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x4

    if-eqz v1, :cond_a

    iget v6, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v6, :cond_5

    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    :cond_5
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_6

    iget-object v7, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-boolean v6, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v2

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_3
    sget v1, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    const v1, 0x102003e

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_e

    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-boolean v3, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v3, :cond_d

    move v2, v5

    :cond_d
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_4
    iget-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->d(Landroid/view/View;Z)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->d(Landroid/view/View;Z)V

    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v2}, Landroidx/preference/l;->e(Z)V

    iget-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v2}, Landroidx/preference/l;->f(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object v2, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$e;

    if-nez v2, :cond_10

    new-instance v2, Landroidx/preference/Preference$e;

    invoke-direct {v2, p0}, Landroidx/preference/Preference$e;-><init>(Landroidx/preference/Preference;)V

    iput-object v2, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$e;

    :cond_10
    if-eqz p1, :cond_11

    iget-object p0, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$e;

    goto :goto_6

    :cond_11
    move-object p0, v4

    :goto_6
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_12

    if-nez v1, :cond_12

    invoke-static {v0, v4}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method

.method protected onClick()V
    .locals 0

    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/Preference;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Ld0/h;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    iget-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/Preference;->f()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong state class -- expecting Preference State"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object p0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public performClick()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$d;->a(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/preference/j;->f()Landroidx/preference/j$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p0}, Landroidx/preference/j$c;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    iget-object p0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;->e(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method protected persistFloat(F)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;->e(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method protected persistInt(I)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;->e(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method protected persistLong(J)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    not-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;->e(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;->e(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/e;

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    invoke-virtual {v0}, Landroidx/preference/j;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Landroidx/preference/Preference;->e(Landroid/content/SharedPreferences$Editor;)V

    return v1
.end method

.method requireKey()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Preference does not have a key assigned."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCopyingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/Preference;->f()V

    iput-object p1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/preference/Preference;->b()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    iget-boolean p1, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->requireKey()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$c;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$d;

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mPersistent:Z

    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/e;)V
    .locals 0

    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    iput-boolean p1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Preference already has a SummaryProvider set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$f;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$f;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setViewId(I)V
    .locals 0

    iput p1, p0, Landroidx/preference/Preference;->mViewId:I

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    iget-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroidx/preference/Preference$b;->d(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0

    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldPersist()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final wasDetached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return p0
.end method
