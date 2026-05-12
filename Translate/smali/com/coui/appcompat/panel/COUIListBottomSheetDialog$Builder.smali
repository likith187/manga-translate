.class public Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
.super Landroidx/appcompat/app/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCenterButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCenterButtonText:Ljava/lang/String;

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field private mContext:Landroid/content/Context;

.field private mFinalNavColorAfterDismiss:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsExecuteNavColorAnimAfterDismiss:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mIsMultiChoice:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLayout:Landroid/view/View;

.field private mLeftButtonClickListener:Landroid/view/View$OnClickListener;

.field private mLeftButtonText:Ljava/lang/String;

.field private mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnMenuItemClick:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

.field public mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRightButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRightButtonText:Ljava/lang/String;

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 3
    new-instance v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    .line 8
    new-instance v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 10
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 11
    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/support/panel/R$layout;->coui_list_bottom_sheet_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mLayout:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public createDialog()Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    sget v4, Lcom/support/panel/R$style;->DefaultBottomSheetDialog:I

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$002(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v1

    sget v2, Lcom/support/panel/R$id;->select_dialog_listview:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/COUIPanelPreferenceLinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-static {v2}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v2

    sget v4, Lcom/support/panel/R$id;->toolbar:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object v4, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    iget-boolean v2, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v5, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    sget v6, Lcom/support/dialog/R$layout;->coui_select_dialog_multichoice:I

    iget-object v7, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    iget-object v8, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    const/4 v11, 0x1

    const/4 v9, -0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget-object v13, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    sget v14, Lcom/support/dialog/R$layout;->coui_select_dialog_singlechoice:I

    iget-object v15, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    iget v4, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    move-object v12, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V

    :goto_0
    iget-object v3, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-static {v3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->getDragableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder$1;-><init>(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;)V

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->setOnItemClickListener(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;)V

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    return-object v0
.end method

.method public getBottomSheetDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mListBottomSheetDialog:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->access$000(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method public setCenterButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCenterButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCenterButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsExecuteNavColorAnimAfterDismiss:Z

    return-object p0
.end method

.method public setFinalNavColorAfterDismiss(I)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mFinalNavColorAfterDismiss:I

    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mLeftButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mLeftButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setMenuItemClickListener(Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnMenuItemClick:Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$OnMenuItemClickListener;

    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZILandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 12
    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 15
    iput-object p4, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 6
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 8
    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 10
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[Z[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 17
    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItems:[Z

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 19
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    .line 20
    iput-object p4, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mRightButtonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mRightButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSingleChoiceItems(IIILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 12
    iput-object p4, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    iput p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 15
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 4
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    iput p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 8
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 9
    iput p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;I[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 17
    iput-object p4, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mOnRadioButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 18
    iput p2, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mCheckedItem:I

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mIsMultiChoice:Z

    .line 20
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaries(I)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaries([Ljava/lang/CharSequence;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mSummaries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->setTitle(I)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(I)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
