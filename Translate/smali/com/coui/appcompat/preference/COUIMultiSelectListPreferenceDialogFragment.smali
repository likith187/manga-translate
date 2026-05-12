.class public Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
.super Landroidx/preference/d;
.source "SourceFile"


# static fields
.field private static final SAVE_STATE_BLUR_ANIM_LAVEL:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_ANIM_LAVEL"

.field private static final SAVE_STATE_BLUR_BACKGROUND:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND"

.field private static final SAVE_STATE_FOLLOWHAND:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment.values"

.field private static final TAG:Ljava/lang/String; = "COUIMultiSelectListPreferenceDialogFragment-hkl"


# instance fields
.field private mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

.field private mBlurBackground:Z

.field private mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

.field private mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private mCheckboxStates:[Z

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mIfFollowHand:Z

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurBackground:Z

    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    return-void
.end method

.method private getCheckboxStatesFromValues(Ljava/util/Set;)[Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSelectedValues()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCheckBoxStates()[Z

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-boolean v4, v1, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->getSummaries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->getCheckboxStatesFromValues(Ljava/util/Set;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mCheckboxStates:[Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->isIfFollowHand()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->isBlurBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurBackground:Z

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->getBlurMinAnimLevel()Lcom/coui/appcompat/uiutil/AnimLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    goto :goto_0

    :cond_0
    const-string v0, "COUIMultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mCheckboxStates:[Z

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurBackground:Z

    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/AnimLevel;->getIntValue()I

    move-result v0

    const-string v1, "ListPreferenceDialogFragment.SAVE_STATE_BLUR_ANIM_LAVEL"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/coui/appcompat/uiutil/AnimLevel;->valueOf(I)Lcom/coui/appcompat/uiutil/AnimLevel;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    new-instance p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$layout;->coui_select_dialog_multichoice:I

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mCheckboxStates:[Z

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    new-instance p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/support/dialog/R$style;->COUIAlertDialog_BottomAssignment:I

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurBackground:Z

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setBlurBackgroundDrawable(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    if-eqz v0, :cond_2

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->getPreferenceView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mPreference:Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;->getLastTouchPoint()Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create(Landroid/view/View;Landroid/graphics/Point;)Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/d;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->getSelectedValues()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCheckBoxStates()[Z

    move-result-object v0

    const-string v1, "COUIMultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_FOLLOWHAND"

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mIfFollowHand:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND"

    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/AnimLevel;->getIntValue()I

    move-result p0

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_BLUR_ANIM_LAVEL"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->mBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateViewAfterShown()V

    :cond_1
    :goto_0
    return-void
.end method
