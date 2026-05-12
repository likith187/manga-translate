.class public Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h;"
    }
.end annotation


# instance fields
.field private mCheckBoxStates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private mIsMultiChoice:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLayoutResId:I

.field private mOnItemClickListener:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I[ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mLayoutResId:I

    .line 5
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 6
    iput-object p4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 7
    iput-boolean p7, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    .line 9
    iput p5, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    if-eqz p6, :cond_0

    .line 10
    invoke-direct {p0, p6}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->initCheckboxStates([Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    return p0
.end method

.method static synthetic access$202(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initCheckboxStates([Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->onBindViewHolder(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mIsMultiChoice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->checkBox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    goto :goto_2

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mCheckedItem:I

    if-ne v2, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 6
    :goto_2
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 8
    iget-object v3, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->itemText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 11
    :cond_3
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->summaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_3
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->mLayout:Landroid/view/View;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->mOnItemClickListener:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;

    return-void
.end method
