.class public Lcom/google/android/material/bottomsheet/b;
.super Landroidx/appcompat/app/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/b$b;
    }
.end annotation


# instance fields
.field private waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/p;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->n()V

    return-void
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/b;->waitingForDismissAllowingStateLoss:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/c;->dismiss()V

    :goto_0
    return-void
.end method

.method private o(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 2

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/b;->waitingForDismissAllowingStateLoss:Z

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->n()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/a;->removeDefaultCallback()V

    :cond_1
    new-instance p2, Lcom/google/android/material/bottomsheet/b$b;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/bottomsheet/b$b;-><init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$g;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :goto_0
    return-void
.end method

.method private p(Z)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/bottomsheet/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->getDismissWithAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/b;->o(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/c;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/fragment/app/c;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getTheme()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
