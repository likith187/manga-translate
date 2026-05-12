.class Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

.field final synthetic val$dialog:Landroidx/appcompat/app/c;

.field final synthetic val$supportEmptyInput:Z


# direct methods
.method constructor <init>(Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;Landroidx/appcompat/app/c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->this$0:Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$dialog:Landroidx/appcompat/app/c;

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$supportEmptyInput:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$dialog:Landroidx/appcompat/app/c;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/c;->f(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment$1;->val$supportEmptyInput:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
