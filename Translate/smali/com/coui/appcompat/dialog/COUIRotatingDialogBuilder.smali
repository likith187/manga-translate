.class public Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimationViewMaxSize:I

.field private mBlurBackgroundWindow:Z

.field private mCancelButton:Ljava/lang/String;

.field private mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDialogTitle:Ljava/lang/String;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFileName:Ljava/lang/String;

.field private mMessageText:Ljava/lang/String;

.field private mMessageView:Landroid/widget/TextView;

.field private mRawResource:I

.field private mRepeatCount:I

.field private mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

.field private mShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRepeatCount:I

    .line 4
    iput v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRawResource:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mStyle:I

    .line 7
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mBlurBackgroundWindow:Z

    .line 8
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mMessageText:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/dialog/R$dimen;->coui_spinner_loading_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mAnimationViewMaxSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRepeatCount:I

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method private addOnWindowAttachListener(Landroidx/appcompat/app/c;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/support/dialog/R$id;->progress_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mMessageView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRawResource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mRawResource and mFileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->hasButton()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->setLayoutParamsMaxSize(Landroid/view/View;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->hasButton()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->setLayoutParamsMaxSize(Landroid/view/View;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    :cond_4
    :goto_1
    return-void
.end method

.method private hasButton()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mCancelButton:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method public setBlurBackgroundWindow(Z)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mBlurBackgroundWindow:Z

    return-object p0
.end method

.method public setCancelButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->setCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    return-object p0
.end method

.method public setCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mCancelButton:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setDialogTitle(I)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->setDialogTitle(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;

    return-object p0
.end method

.method public setDialogTitle(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mDialogTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setLayoutParamsMaxSize(Landroid/view/View;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mAnimationViewMaxSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setLayoutParamsWrapContent(Landroid/view/View;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setRawResource(I)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRawResource:I

    return-object p0
.end method

.method public setRepeatCount(I)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRepeatCount:I

    return-object p0
.end method

.method public setShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mStyle:I

    return-void
.end method

.method public show()Landroidx/appcompat/app/c;
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mCancelButton:Ljava/lang/String;

    if-nez v0, :cond_0

    sget v0, Lcom/support/dialog/R$style;->COUIAlertDialog_Rotating:I

    iput v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mStyle:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/dialog/R$style;->COUIAlertDialog_Rotating_Cancelable:I

    iput v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mStyle:I

    :cond_1
    :goto_0
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mStyle:I

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mCancelButton:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mDialogTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mBlurBackgroundWindow:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setBlurBackgroundDrawable(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder$2;-><init>(Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->mRotatingDialogBuilder:Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateViewAfterShown()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIRotatingDialogBuilder;->addOnWindowAttachListener(Landroidx/appcompat/app/c;)V

    return-object v0
.end method
