.class public Lcom/coui/appcompat/statement/COUIUserStatementDialog;
.super Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$WhenMappings;,
        Lcom/coui/appcompat/statement/COUIUserStatementDialog$Companion;
    }
.end annotation


# static fields
.field public static final BUTTON_EXTSIZE:F = 16.0f

.field public static final Companion:Lcom/coui/appcompat/statement/COUIUserStatementDialog$Companion;

.field public static final SCROLL_TEXTSIZE:F = 14.0f

.field public static final TITLE_TEXTSIZE:F = 18.0f


# instance fields
.field private appMessage:Ljava/lang/CharSequence;

.field private appName:Ljava/lang/CharSequence;

.field private bottomButtonText:Ljava/lang/CharSequence;

.field private changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

.field private final contentPaddingEnd:I

.field private final customLayoutMinHeight:I

.field private final customPaddingTop:I

.field private customView:Landroid/view/View;

.field private customViewTiny:Landroid/view/View;

.field private exitButtonText:Ljava/lang/CharSequence;

.field private final expandPanelMarginTop:I

.field private final expandScrollPadding:I

.field private isFullPage:Z

.field private itemClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

.field private layoutChangeListenerFromNormal:Landroid/view/View$OnLayoutChangeListener;

.field private layoutChangeListenerFromSmallLand:Landroid/view/View$OnLayoutChangeListener;

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;",
            ">;"
        }
    .end annotation
.end field

.field private listViewHolderArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private logoDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

.field private final messagePaddingTop:I

.field private miniContentView:Landroid/view/View;

.field private miniContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

.field private normalContentView:Landroid/view/View;

.field private normalContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

.field private oldScreenHeightDp:I

.field private oldScreenWidthDp:I

.field private onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

.field private final panelEndPadding:I

.field private final panelPaddingTopMin:I

.field private final panelStartPadding:I

.field private protocolText:Ljava/lang/CharSequence;

.field private final scrollTextMaxHeight:I

.field private final scrollTextMaxHeightNormal:I

.field private smallLandContentView:Landroid/view/View;

.field private smallLandContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

.field private statement:Ljava/lang/CharSequence;

.field private final subTitlePaddingTop:I

.field private tinyContentView:Landroid/view/View;

.field private tinyContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

.field private titleText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->Companion:Lcom/coui/appcompat/statement/COUIUserStatementDialog$Companion;

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;-><init>(Landroid/content/Context;IFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IFF)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;IFF)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 8
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_margin_top_min:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelPaddingTopMin:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 10
    sget p4, Lcom/support/statement/R$dimen;->coui_component_statement_expand_scroll_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->expandScrollPadding:I

    sub-int/2addr p2, p3

    .line 11
    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->expandPanelMarginTop:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 13
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_scroll_text_height_normal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->scrollTextMaxHeightNormal:I

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 15
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_scroll_text_height_max:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->scrollTextMaxHeight:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 17
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_panel_start_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelStartPadding:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 19
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_panel_end_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelEndPadding:I

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 21
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_custom_padding_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customPaddingTop:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 23
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_logo_message_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->messagePaddingTop:I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 25
    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_logo_subtitle_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->subTitlePaddingTop:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_panel_content_item_end_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->contentPaddingEnd:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/statement/R$dimen;->coui_component_statement_custom_layout_min_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customLayoutMinHeight:I

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->isFullPage:Z

    .line 29
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listViewHolderArray:Ljava/util/List;

    .line 30
    sget-object p3, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->INIT:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    .line 31
    new-instance p3, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$changeEnumUIListener$1;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    .line 32
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->setIsShowInMaxHeight(Z)V

    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->isLargeScreenLimitMaxSize:Z

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;-><init>(Landroid/content/Context;IFF)V

    return-void
.end method

.method public static final synthetic access$addOnLayoutChangeListenerToScrollText(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->addOnLayoutChangeListenerToScrollText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V

    return-void
.end method

.method public static final synthetic access$getContentPaddingEnd$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->contentPaddingEnd:I

    return p0
.end method

.method public static final synthetic access$getCustomLayoutMinHeight$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customLayoutMinHeight:I

    return p0
.end method

.method public static final synthetic access$getCustomPaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customPaddingTop:I

    return p0
.end method

.method public static final synthetic access$getExpandPanelMarginTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->expandPanelMarginTop:I

    return p0
.end method

.method public static final synthetic access$getExpandScrollPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->expandScrollPadding:I

    return p0
.end method

.method public static final synthetic access$getListViewHolderArray$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listViewHolderArray:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMessagePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->messagePaddingTop:I

    return p0
.end method

.method public static final synthetic access$getMiniContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->miniContentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->miniContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    return-object p0
.end method

.method public static final synthetic access$getNormalContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->normalContentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->normalContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    return-object p0
.end method

.method public static final synthetic access$getPanelEndPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelEndPadding:I

    return p0
.end method

.method public static final synthetic access$getPanelStartPadding$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelStartPadding:I

    return p0
.end method

.method public static final synthetic access$getScrollTextMaxHeight$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->scrollTextMaxHeight:I

    return p0
.end method

.method public static final synthetic access$getScrollTextMaxHeightNormal$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->scrollTextMaxHeightNormal:I

    return p0
.end method

.method public static final synthetic access$getSmallLandContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->smallLandContentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->smallLandContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    return-object p0
.end method

.method public static final synthetic access$getSubTitlePaddingTop$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->subTitlePaddingTop:I

    return p0
.end method

.method public static final synthetic access$getTinyContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->tinyContentView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getTinyContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->tinyContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

    return-object p0
.end method

.method public static final synthetic access$initMINIView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initMINIView(Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;)V

    return-void
.end method

.method public static final synthetic access$initNormalView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initNormalView()V

    return-void
.end method

.method public static final synthetic access$initSmallLandView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initSmallLandView()V

    return-void
.end method

.method public static final synthetic access$initTinyView(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initTinyView(Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;)V

    return-void
.end method

.method public static final synthetic access$setMiniContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->miniContentView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setMiniContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->miniContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;

    return-void
.end method

.method public static final synthetic access$setNormalContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->normalContentView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setNormalContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->normalContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    return-void
.end method

.method public static final synthetic access$setSmallLandContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->smallLandContentView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setSmallLandContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->smallLandContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    return-void
.end method

.method public static final synthetic access$setTinyContentView$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->tinyContentView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setTinyContentViewHolder$p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->tinyContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;

    return-void
.end method

.method private final addOnLayoutChangeListenerToScrollText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V
    .locals 2

    invoke-virtual {p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvStatementProtocol()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    instance-of v0, p3, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->layoutChangeListenerFromNormal:Landroid/view/View$OnLayoutChangeListener;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initLayoutChangeListener(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->layoutChangeListenerFromNormal:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->layoutChangeListenerFromNormal:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    instance-of v0, p3, Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->layoutChangeListenerFromSmallLand:Landroid/view/View$OnLayoutChangeListener;

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initLayoutChangeListener(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->layoutChangeListenerFromSmallLand:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->layoutChangeListenerFromSmallLand:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method

.method private final changePanelState(Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-interface {v0, p2, v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->initMINIContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    invoke-interface {v0, p2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->updateMINIContentView(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-interface {v0, p2, v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->initTinyContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    invoke-interface {v0, p2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->updateTinyContentView(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-interface {v0, p2, v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->initSplitScreenContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    invoke-interface {v0, p2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->updateSplitScreenContentView(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-interface {v0, p2, v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->initSmallLandContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    invoke-interface {v0, p2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->updateSmallLandContentView(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-interface {v0, p2, v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->initNormalContentView(Landroid/content/res/Configuration;Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changeEnumUIListener:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;

    invoke-interface {v0, p2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->updateNormalContentView(Landroid/content/res/Configuration;)V

    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    return-void
.end method

.method private final checkPanelStatus(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    sget-object v1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->getSCREN_DP_MINI_WIDTH()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->TINY:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changePanelState(Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->isFullPage:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->MINI:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changePanelState(Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v0, 0xf

    if-ne v3, v2, :cond_2

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->isFullPage:Z

    invoke-super {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsInTinyScreen(ZZ)V

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SMALL_LAND:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changePanelState(Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;Landroid/content/res/Configuration;)V

    return-void

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    sget-object v2, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-virtual {v2}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->getSCREN_DP_SPLIT_HEIGHT()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->isFullPage:Z

    invoke-super {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsInTinyScreen(ZZ)V

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SPLIT_SCREEN:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changePanelState(Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;Landroid/content/res/Configuration;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->isFullPage:Z

    invoke-super {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsInTinyScreen(ZZ)V

    sget-object v0, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->NORMAL:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->changePanelState(Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final getPanelHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final getPanelWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    sget v0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final initLayoutChangeListener(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    new-instance v0, Lcom/coui/appcompat/statement/p;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/coui/appcompat/statement/p;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static final initLayoutChangeListener$lambda$40(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p5, "$viewHolder"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Lcom/coui/appcompat/statement/o;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/coui/appcompat/statement/o;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p4, p5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initLayoutChangeListener$lambda$40$lambda$39(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$viewHolder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvStatementProtocol()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvStatementProtocol()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_1
    invoke-direct/range {p1 .. p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getPanelWidth()I

    move-result v5

    iget v6, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelStartPadding:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelEndPadding:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->contentPaddingEnd:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoName()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, ""

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoName()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v7}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-virtual {v7}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->getSCREN_DP_DEFAULT_HEIGHT()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v7

    :goto_2
    invoke-virtual {v7}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v7

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-virtual {v7}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->getSCREN_DP_SPLIT_HEIGHT()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v7

    goto :goto_2

    :goto_3
    int-to-float v5, v5

    cmpg-float v5, v5, v6

    const/4 v6, 0x1

    if-gez v5, :cond_5

    move/from16 v19, v6

    goto :goto_4

    :cond_5
    move/from16 v19, v4

    :goto_4
    invoke-direct/range {p1 .. p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getPanelHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v8

    cmpg-float v5, v5, v7

    if-gez v5, :cond_6

    move/from16 v20, v6

    goto :goto_5

    :cond_6
    move/from16 v20, v4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v2

    if-lt v5, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->getMaxHeight()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v19, :cond_7

    if-nez v20, :cond_a

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvStatementProtocol()Landroid/widget/TextView;

    move-result-object v2

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_6

    :cond_8
    move v5, v4

    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollTextStatementProtocol()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    move v3, v4

    :goto_7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollText()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollTextStatementProtocol()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    instance-of v0, v0, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->mEnumPanelStatusType:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    sget-object v2, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;->SPLIT_SCREEN:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$PanelStatusTypeEnum;

    if-eq v0, v2, :cond_c

    iget-object v8, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->normalContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    if-eqz v8, :cond_c

    iget-object v9, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listItems:Ljava/util/List;

    iget-object v10, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customView:Landroid/view/View;

    iget v11, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelPaddingTopMin:I

    iget v12, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelStartPadding:I

    iget v13, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->panelEndPadding:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v0, "context"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v15, v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->contentPaddingEnd:I

    iget v0, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->mCoordinatorLayoutMinInsetsTop:I

    invoke-direct/range {p1 .. p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getPanelHeight()I

    move-result v17

    invoke-direct/range {p1 .. p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->getPanelWidth()I

    move-result v18

    move/from16 v16, v0

    invoke-virtual/range {v8 .. v20}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;->updateLogoPaddingTop(Ljava/util/List;Landroid/view/View;IIILandroid/content/Context;IIIIZZ)V

    :cond_c
    :goto_9
    return-void
.end method

.method private final initMINIView(Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;)V
    .locals 6

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getAppStatement()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    sget-object v3, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getProtocolStatement()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    invoke-static {v4, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getMScrollViewComponent()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getProtocolStatement()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/statement/R$dimen;->coui_component_statement_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getMScrollViewComponent()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;->setProtocolFixed(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getExitButton()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/statement/q;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/statement/q;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getBottomButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v2, Lcom/coui/appcompat/statement/r;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/statement/r;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/coui/appcompat/button/SingleButtonWrap;

    invoke-direct {v2, v0, v1}, Lcom/coui/appcompat/button/SingleButtonWrap;-><init>(Lcom/coui/appcompat/button/COUIButton;I)V

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->setBottomButtonWrap(Lcom/coui/appcompat/button/SingleButtonWrap;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getSmallLandexitButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/h;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/h;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/i;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/i;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getBottomButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getExitButton()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getAppStatement()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->statement:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getProtocolStatement()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getSmallLandexitButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;

    invoke-direct {p0}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;-><init>()V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getSmallLandexitButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;->registerButton(Lcom/coui/appcompat/button/COUIButton;I)V

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$MINIContentViewHolder;->setSimpleButtonGroupCtrl(Lcom/coui/appcompat/button/SimpleButtonGroupCtrl;)V

    return-void
.end method

.method private static final initMINIView$lambda$23$lambda$22(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initMINIView$lambda$25$lambda$24(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onBottomButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initMINIView$lambda$27$lambda$26(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initMINIView$lambda$29$lambda$28(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onBottomButtonClick()V

    :cond_0
    return-void
.end method

.method private final initNormalView()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->normalContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$NormalContentViewHolder;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initViewHolderBind(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V

    :cond_0
    return-void
.end method

.method private final initSmallLandView()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->smallLandContentViewHolder:Lcom/coui/appcompat/statement/COUIUserStatementDialog$SmallLandContentViewHolder;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initViewHolderBind(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V

    :cond_0
    return-void
.end method

.method private final initTinyView(Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getAppStatementTiny()Landroid/widget/TextView;

    move-result-object v0

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

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getBtnConfirmTiny()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/m;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/m;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getBtnExitTiny()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/n;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/n;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getTitleTiny()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getBtnConfirmTiny()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getBtnExitTiny()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getAppStatementTiny()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->statement:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getAppStatementTiny()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customViewTiny:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$TinyContentViewHolder;->getCustomFunctionalAreaTiny()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static final initTinyView$lambda$33$lambda$32(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onBottomButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initTinyView$lambda$35$lambda$34(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private final initViewHolderBind(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getIvLogo()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->logoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoSubTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoName()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoMessage()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->appMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->statement:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getExitButton()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSmallLandExitButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getBtnConfirm()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listViewHolderArray:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoMessage()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoSubTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvLogoName()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTxtStatement()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    sget-object v2, Lcom/coui/appcompat/statement/COUILinkMovementMethod;->INSTANCE:Lcom/coui/appcompat/statement/COUILinkMovementMethod;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getTvStatementProtocol()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getExitButton()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/coui/appcompat/statement/g;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/g;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    :cond_3
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getBtnConfirm()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/coui/appcompat/statement/j;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/j;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSmallLandExitButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/k;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/k;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getSmallLandConfirmButton()Lcom/coui/appcompat/button/COUIButton;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/statement/l;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/statement/l;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->getScrollTextStatementProtocol()Lcom/coui/appcompat/statement/COUIComponentMaxHeightScrollView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindBottomButtonWarp()V

    invoke-virtual {p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;->bindSimpleButtonGroupCtrl()V

    return-void
.end method

.method private static final initViewHolderBind$lambda$12$lambda$11(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initViewHolderBind$lambda$14$lambda$13(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onBottomButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initViewHolderBind$lambda$16$lambda$15(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onExitButtonClick()V

    :cond_0
    return-void
.end method

.method private static final initViewHolderBind$lambda$18$lambda$17(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;->onBottomButtonClick()V

    :cond_0
    return-void
.end method

.method public static synthetic j(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initViewHolderBind$lambda$18$lambda$17(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initTinyView$lambda$35$lambda$34(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initMINIView$lambda$23$lambda$22(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initViewHolderBind$lambda$16$lambda$15(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initMINIView$lambda$29$lambda$28(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initMINIView$lambda$27$lambda$26(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initViewHolderBind$lambda$14$lambda$13(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initLayoutChangeListener$lambda$40$lambda$39(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic r(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initTinyView$lambda$33$lambda$32(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p12}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initLayoutChangeListener$lambda$40(Lcom/coui/appcompat/statement/COUIUserStatementDialog$ContentViewHolder;Lcom/coui/appcompat/statement/COUIUserStatementDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic t(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initViewHolderBind$lambda$12$lambda$11(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->initMINIView$lambda$25$lambda$24(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getAppMessage()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->appMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getAppName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getBottomButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customView:Landroid/view/View;

    return-object p0
.end method

.method public final getCustomViewTiny()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customViewTiny:Landroid/view/View;

    return-object p0
.end method

.method public final getExitButtonText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getItemClickListener()Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->itemClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

    return-object p0
.end method

.method public final getListItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listItems:Ljava/util/List;

    return-object p0
.end method

.method public final getLogoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->logoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getOnButtonClickListener()Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    return-object p0
.end method

.method public final getProtocolText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getStatement()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->statement:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getTitleText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->titleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setAppMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->appMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setAppName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->appName:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setBottomButtonText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setBottomButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->bottomButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customView:Landroid/view/View;

    return-void
.end method

.method public final setCustomViewTiny(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->customViewTiny:Landroid/view/View;

    return-void
.end method

.method public final setExitButtonText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setExitButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->exitButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setIsShowInMaxHeight(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    iput-boolean p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->isFullPage:Z

    return-void
.end method

.method public final setItemClickListener(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->itemClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

    return-void
.end method

.method public final setListItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listItems:Ljava/util/List;

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listViewHolderArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listItems:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listItems:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/support/statement/R$layout;->coui_component_statement_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_2

    new-instance v3, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;

    invoke-direct {v3, p0, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;-><init>(Lcom/coui/appcompat/statement/COUIUserStatementDialog;Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v2

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    invoke-static {v2, v4}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_0
    invoke-virtual {v3}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->getMessage()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v4}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->itemClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;

    invoke-virtual {v3, v2}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->bindListener(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnItemClickListener;)V

    check-cast v1, Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;

    invoke-virtual {v3, v1, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog$ListItemViewHolder;->bindItemData(Lcom/coui/appcompat/statement/COUIUserStatementDialog$COUIUserStatementListItem;I)V

    iget-object v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->listViewHolderArray:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final setLogoDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->logoDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setOnButtonClickListener(Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->onButtonClickListener:Lcom/coui/appcompat/statement/COUIUserStatementDialog$OnButtonClickListener;

    return-void
.end method

.method public final setProtocolText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setProtocolText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->protocolText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setStatement(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->statement:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setStatement(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->statement:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setTitleText(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->titleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setTitleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->titleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    sget-object v1, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener;->Companion:Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;

    invoke-virtual {v1}, Lcom/coui/appcompat/statement/COUIStatementPanelStateChangeListener$Companion;->getSCREN_DP_MINI_WIDTH()Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/unit/Dp;->getValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsInTinyScreen(ZZ)V

    invoke-super {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setIsShowInMaxHeight(Z)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "context.resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->checkPanelStatus(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->oldScreenWidthDp:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->oldScreenHeightDp:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->oldScreenWidthDp:I

    iput v1, p0, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->oldScreenHeightDp:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/statement/COUIUserStatementDialog;->checkPanelStatus(Landroid/content/res/Configuration;)V

    :cond_1
    :goto_0
    return-void
.end method
