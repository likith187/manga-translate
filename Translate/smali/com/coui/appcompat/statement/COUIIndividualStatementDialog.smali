.class public Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;
.super Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;,
        Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$Companion;

.field public static final MEDIUM_LARGE_SCREEN_SW_THRESHOLD:I = 0x1e0

.field public static final ORIGIN_STATEMENT_TEXT_SIZE:F = 14.0f

.field public static final STATEMENT_TEXT_SIZE_WITH_CHECKBOX:F = 12.0f


# instance fields
.field private appStatement:Landroid/widget/TextView;

.field private bottomButton:Lcom/coui/appcompat/button/COUIButton;

.field private bottomButtonText:Ljava/lang/CharSequence;

.field private exitButton:Landroid/widget/TextView;

.field private exitButtonText:Ljava/lang/CharSequence;

.field private isInSmallLand:Z

.field private isInSmallPortrait:Z

.field private mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

.field private onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

.field private scrollViewLayout:Landroid/widget/LinearLayout;

.field private smallLandButtonLayout:Landroid/widget/LinearLayout;

.field private smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

.field private smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

.field private statement:Ljava/lang/CharSequence;

.field private titleText:Ljava/lang/CharSequence;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->Companion:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 8

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFF)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;IFF)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 8
    sget p3, Lcom/support/statement/R$layout;->coui_component_full_page_function_privacy:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 9
    sget p3, Lcom/support/statement/R$id;->txt_statement:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.txt_statement)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->appStatement:Landroid/widget/TextView;

    .line 10
    sget p3, Lcom/support/statement/R$id;->btn_confirm:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.btn_confirm)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/coui/appcompat/button/COUIButton;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    .line 11
    sget p3, Lcom/support/statement/R$id;->scroll_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.scroll_text)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    .line 12
    sget p3, Lcom/support/statement/R$id;->layout_scroll_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.layout_scroll_text)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->scrollViewLayout:Landroid/widget/LinearLayout;

    .line 13
    sget p3, Lcom/support/statement/R$id;->txt_exit:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.txt_exit)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->exitButton:Landroid/widget/TextView;

    .line 14
    sget p3, Lcom/support/statement/R$id;->txt_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.txt_title)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->titleView:Landroid/widget/TextView;

    .line 15
    sget p3, Lcom/support/statement/R$id;->small_land_button_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.small_land_button_layout)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandButtonLayout:Landroid/widget/LinearLayout;

    .line 16
    sget p3, Lcom/support/statement/R$id;->small_land_btn_confirm:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.small_land_btn_confirm)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/coui/appcompat/button/COUIButton;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    .line 17
    sget p3, Lcom/support/statement/R$id;->small_land_btn_exit:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "findViewById(R.id.small_land_btn_exit)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/coui/appcompat/button/COUIButton;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    .line 18
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 19
    invoke-super {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    const-string p4, "context.resources.configuration"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallLand:Z

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    iput-boolean v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallPortrait:Z

    .line 22
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/a;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->initView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 4
    sget p2, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;-><init>(Landroid/content/Context;IFF)V

    return-void
.end method

.method private static final addPrivacyList$lambda$16$lambda$15$lambda$14(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Lcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->resetBottomButton()V

    return-void
.end method

.method private final getCheckedFunctionList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/statement/PrivacyItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->scrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.coui.appcompat.statement.COUICheckBoxItemView"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/coui/appcompat/statement/COUICheckBoxItemView;

    invoke-virtual {v3}, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->getPrivacyItem()Lcom/coui/appcompat/statement/PrivacyItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final initView()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->appStatement:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    sget-object v1, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->exitButton:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    new-instance v1, Lcom/coui/appcompat/statement/c;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/c;-><init>(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/statement/R$dimen;->coui_component_statement_button_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/statement/R$dimen;->coui_component_statement_large_button_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/coui/appcompat/statement/d;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/d;-><init>(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/coui/appcompat/statement/e;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/e;-><init>(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    new-instance v1, Lcom/coui/appcompat/statement/f;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/f;-><init>(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallLand:Z

    invoke-direct {p0, v0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->updateBottomButton(Z)V

    return-void
.end method

.method private static final initView$lambda$3$lambda$2(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$6$lambda$5(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->getCheckedFunctionList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;->onBottomButtonClick(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$7(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->getCheckedFunctionList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;->onBottomButtonClick(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private static final initView$lambda$8(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private final isSmallScreen(Landroid/content/res/Configuration;)Z
    .locals 0

    iget p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p1, 0x1e0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Lcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->addPrivacyList$lambda$16$lambda$15$lambda$14(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Lcom/coui/appcompat/checkbox/COUICheckBox;I)V

    return-void
.end method

.method public static synthetic k(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->initView$lambda$7(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->initView$lambda$6$lambda$5(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->initView$lambda$8(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->initView$lambda$3$lambda$2(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method private final resetBottomButton()V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->scrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type com.coui.appcompat.statement.COUICheckBoxItemView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/coui/appcompat/statement/COUICheckBoxItemView;

    invoke-virtual {v5}, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/button/COUIButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/button/COUIButton;->setEnabled(Z)V

    return-void
.end method

.method private final updateBottomButton(Z)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->exitButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateUI(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallLand:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallLand:Z

    invoke-direct {p0, v0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->updateBottomButton(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isSmallScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    iget-boolean p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallPortrait:Z

    if-eq p1, v1, :cond_4

    iput-boolean v1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallPortrait:Z

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->isInSmallPortrait:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/statement/R$dimen;->coui_component_statement_button_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/statement/R$dimen;->coui_component_statement_large_button_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_1
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final addPrivacyList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/statement/PrivacyItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/o;->q()V

    :cond_0
    check-cast v3, Lcom/coui/appcompat/statement/PrivacyItem;

    new-instance v5, Lcom/coui/appcompat/statement/COUICheckBoxItemView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "context"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v6, v3}, Lcom/coui/appcompat/statement/COUICheckBoxItemView;-><init>(Landroid/content/Context;Lcom/coui/appcompat/statement/PrivacyItem;)V

    new-instance v3, Lcom/coui/appcompat/statement/b;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/statement/b;-><init>(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;)V

    invoke-virtual {v5, v3}, Lcom/coui/appcompat/statement/COUICheckBoxItemView;->setOnStateChangeListener(Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;)V

    iget-object v3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->scrollViewLayout:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v3, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/button/COUIButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v3, v1}, Lcom/coui/appcompat/button/COUIButton;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    sget v2, Lcom/support/statement/R$id;->checkbox_line:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->mScrollViewComponent:Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/statement/R$dimen;->coui_component_individual_padding_top_with_checkbox:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/statement/R$dimen;->coui_component_individual_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->appStatement:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_4

    :cond_6
    :goto_3
    const/high16 v0, 0x41600000    # 14.0f

    :goto_4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/statement/R$dimen;->coui_component_individual_padding_bottom_with_checkbox:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/statement/R$dimen;->coui_component_individual_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public final getBottomButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getExitButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getOnButtonClickListener()Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

    return-object p0
.end method

.method public final getStatement()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->statement:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitleText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->titleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "context.resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->updateUI(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final setBottomButtonText(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->setBottomButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setBottomButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->bottomButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandConfirmButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setExitButtonText(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->setExitButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setExitButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->exitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->smallLandExitButton:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnButtonClickListener(Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIIndividualStatementDialog$OnButtonClickListener;

    return-void
.end method

.method public final setStatement(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->setStatement(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setStatement(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->statement:Ljava/lang/CharSequence;

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->appStatement:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleText(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->setTitleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->titleText:Ljava/lang/CharSequence;

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIIndividualStatementDialog;->updateUI(Landroid/content/res/Configuration;)V

    return-void
.end method
