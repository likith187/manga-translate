.class public Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
.super Landroidx/preference/a;
.source "SourceFile"


# static fields
.field private static final SAVE_STATE_BLUR_BACKGROUND:Ljava/lang/String; = "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND"

.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"

.field private static final TAG:Ljava/lang/String; = "COUIEditTextPreferenceDialogFragment"


# instance fields
.field private mBlurBackground:Z

.field private mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

.field private mEditText:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurBackground:Z

    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    return-void
.end method

.method private initCOUIAlertDialogBuilder()Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 3

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$style;->COUIAlertDialog_BottomAssignment:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->initCOUIAlertDialogBuilder()Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/preference/f;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "COUIEditTextPreferenceDialogFragment"

    const-string p1, "COUIEditTextPreferenceDialogFragment  contentView == null "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0

    :cond_0
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/edittext/COUIEditText;

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0, p1}, Landroidx/preference/a;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/a;->onBindDialogView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/f;->onPrepareDialogBuilder(Landroidx/appcompat/app/c$a;)V

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIEditTextPreference;->isBlurBackground()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurBackground:Z

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIEditTextPreference;->getBlurMinAnimLevel()Lcom/coui/appcompat/uiutil/AnimLevel;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurBackground:Z

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurMinAnimLevel:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setBlurBackgroundDrawable(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIEditTextPreference;->isSupportEmptyInput()Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    new-instance v2, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Landroidx/appcompat/app/c;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mEditText:Lcom/coui/appcompat/edittext/COUIEditText;

    if-eqz v0, :cond_0

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "ListPreferenceDialogFragment.SAVE_STATE_BLUR_BACKGROUND"

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->mBlurBackground:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    :cond_0
    return-void
.end method
