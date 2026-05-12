.class public Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
.super Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;,
        Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x46

.field private static final TAG:Ljava/lang/String; = "COUISecurityAlertDialogBuilder"


# instance fields
.field private mCheckBoxString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroidx/appcompat/app/c;

.field private mHasCheckBox:Z

.field private mIsChecked:Z

.field private mIsShowStatementText:Z

.field private mLinkId:I

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOnLinkTextClickListener:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;

.field private mOnSelectedListener:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

.field private mStatementId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/support/dialog/R$style;->COUIAlertDialog_Security_Bottom:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mHasCheckBox:Z

    .line 3
    new-instance v0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 4
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 6
    sget v0, Lcom/support/dialog/R$style;->COUIAlertDialog_Security_Bottom:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;II)V

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mHasCheckBox:Z

    .line 8
    new-instance p2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 9
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;II)V

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mHasCheckBox:Z

    .line 13
    new-instance p2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 14
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Landroidx/appcompat/app/c;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnSelectedListener:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnLinkTextClickListener:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;

    return-object p0
.end method

.method private getDefaultButtonClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$5;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    return-object v0
.end method

.method private getStatementStringBuilder(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .locals 2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$2;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/clickablespan/COUIClickableSpan;->setStatusBarClickListener(Lcom/coui/appcompat/clickablespan/COUIClickableSpan$SpannableStrClickListener;)V

    add-int/2addr p3, p2

    const/16 p0, 0x21

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private getStatementTextTouchListener(II)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$3;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;II)V

    return-object v0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v1, Lcom/support/dialog/R$string;->coui_security_alertdialog_checkbox_msg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mCheckBoxString:Ljava/lang/String;

    return-void
.end method

.method private initCheckBox()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/support/dialog/R$id;->coui_security_alert_dialog_checkbox:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mHasCheckBox:Z

    if-nez v1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mIsChecked:Z

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mCheckBoxString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_security_alert_dialog_checkbox_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$4;-><init>(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V

    return-void
.end method

.method private initMessageText()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_message_text_size:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x5

    invoke-static {p0, v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p0

    float-to-int p0, p0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method private initStatementText()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/support/dialog/R$id;->coui_security_alertdialog_statement:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mIsShowStatementText:Z

    if-nez v1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mLinkId:I

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/support/dialog/R$string;->coui_security_alertdailog_privacy:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mStatementId:I

    if-gtz v2, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    sget v3, Lcom/support/dialog/R$string;->coui_security_alertdailog_statement:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-direct {p0, v2, v3, v1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getStatementStringBuilder(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0, v3, v1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getStatementTextTouchListener(II)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->initMessageText()V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->initStatementText()V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->initCheckBox()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/c;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-super {p0, v0}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    invoke-super {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    return-object v0
.end method

.method public setCheckBoxString(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mCheckBoxString:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckBoxString(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mCheckBoxString:Ljava/lang/String;

    return-object p0
.end method

.method public setChecked(Z)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mIsChecked:Z

    return-object p0
.end method

.method public setHasCheckBox(Z)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mHasCheckBox:Z

    return-object p0
.end method

.method public setNegativeString(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getDefaultButtonClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setNegativeString(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getDefaultButtonClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setOnLinkTextClickListener(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnLinkTextClickListener:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnLinkTextClickListener;

    return-object p0
.end method

.method public setOnSelectedListener(Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mOnSelectedListener:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    return-object p0
.end method

.method public setPositiveString(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getDefaultButtonClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setPositiveString(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->getDefaultButtonClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setShowStatementText(Z)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mIsShowStatementText:Z

    return-object p0
.end method

.method public setStatementLinkString(II)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;
    .locals 3

    const/4 v0, -0x1

    if-gtz p1, :cond_0

    iput v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mStatementId:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mStatementId:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mStatementId:I

    :goto_1
    iput p2, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mLinkId:I

    return-object p0
.end method

.method public show()Landroidx/appcompat/app/c;
    .locals 1

    invoke-super {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->initView()V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    return-object p0
.end method

.method public updateViewAfterShown()V
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateViewAfterShown()V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->initView()V

    return-void
.end method
