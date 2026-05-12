.class public Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;,
        Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;,
        Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCheckBoxStates:[Z

.field private mContext:Landroid/content/Context;

.field private mDisableStatus:[Z

.field private mIcons:[I

.field private mIsBottom:Z

.field private mIsMultiChoice:Z

.field private mIsTop:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLayoutResId:I

.field private mMaxCheckedListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;

.field private mMaxCheckedNum:I

.field private mMultiChoiceItemClickListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Z[ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Z[ZZ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Z[ZZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Z[ZZI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsTop:Z

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsBottom:Z

    .line 6
    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mContext:Landroid/content/Context;

    .line 7
    iput p2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mLayoutResId:I

    .line 8
    iput-object p3, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 9
    iput-object p4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 10
    iput-boolean p7, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsMultiChoice:Z

    .line 11
    array-length p1, p3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    if-eqz p5, :cond_0

    .line 12
    invoke-direct {p0, p5}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->initCheckboxStates([Z)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mDisableStatus:[Z

    if-eqz p6, :cond_1

    .line 14
    invoke-direct {p0, p6}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->initCheckboxStatesDisable([Z)V

    .line 15
    :cond_1
    iput p8, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMaxCheckedNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)[Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMaxCheckedNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCheckedNum()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMaxCheckedListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMultiChoiceItemClickListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    return-object p0
.end method

.method private getCheckedNum()I
    .locals 4

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-boolean v3, p0, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private initCheckboxStates([Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-boolean v2, p1, v0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initCheckboxStatesDisable([Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mDisableStatus:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-boolean v2, p1, v0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPaddingBottom(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCheckBoxStates()[Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    return-object p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getMultiChoiceItemClickListener()Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMultiChoiceItemClickListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    return-object p0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    if-lt p1, v1, :cond_1

    return-object v0

    :cond_1
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_3

    new-instance p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mLayoutResId:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v1, Lcom/support/dialog/R$id;->alertdialog_choice_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v1, Lcom/support/dialog/R$id;->text_layout:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    const v1, 0x1020014

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    sget v1, Lcom/support/dialog/R$id;->summary_text2:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    sget v1, Lcom/support/dialog/R$id;->item_divider:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsMultiChoice:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/support/dialog/R$id;->checkbox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    goto :goto_0

    :cond_0
    sget v1, Lcom/support/dialog/R$id;->radio_layout:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->radioLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/support/dialog/R$id;->radio_button:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mDisableStatus:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsMultiChoice:Z

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    new-instance v1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$1;-><init>(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    :goto_2
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    iget-object v2, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    new-instance v1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;-><init>(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_7

    goto :goto_6

    :cond_7
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->divider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_7
    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIcons:[I

    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mContext:Landroid/content/Context;

    aget p1, v1, p1

    invoke-static {p0, p1}, Le/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object p1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_a
    iget-object p0, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_8
    return-object p3
.end method

.method public setCheckboxState(IILandroid/widget/ListView;)V
    .locals 1

    invoke-virtual {p3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    if-ltz v0, :cond_2

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsMultiChoice:Z

    if-eqz v0, :cond_2

    iget-object p3, p3, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mCheckBoxStates:[Z

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, p0, p2

    :cond_2
    return-void
.end method

.method public setIcons([I)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIcons:[I

    return-void
.end method

.method public setIsBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsBottom:Z

    return-void
.end method

.method public setIsTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mIsTop:Z

    return-void
.end method

.method public setMaxCheckedListener(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMaxCheckedListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;

    return-void
.end method

.method public setMultiChoiceItemClickListener(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->mMultiChoiceItemClickListener:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;

    return-void
.end method
