.class public Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;
.super Landroidx/cursoradapter/widget/a;
.source "SourceFile"


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

.field private mIsCheckedColumn:Ljava/lang/String;

.field private mIsCheckedIndex:I

.field private mIsMultiChoice:Z

.field private mLabelColumn:Ljava/lang/String;

.field private mLabelIndex:I

.field private mLayoutResId:I

.field private mSummaryColumn:Ljava/lang/String;

.field private mSummaryIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/cursoradapter/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsMultiChoice:Z

    .line 20
    iput p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsCheckedIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 3
    iput-boolean p7, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsMultiChoice:Z

    .line 4
    iput-object p4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mLabelColumn:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsCheckedColumn:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mLayoutResId:I

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    .line 9
    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mLabelIndex:I

    .line 10
    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mSummaryIndex:I

    :cond_0
    if-eqz p7, :cond_4

    .line 12
    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsCheckedIndex:I

    .line 13
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    :cond_1
    iget p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsCheckedIndex:I

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 15
    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_4
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget v0, Lcom/support/dialog/R$id;->summary_text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mIsMultiChoice:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/support/dialog/R$id;->checkbox:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mLabelIndex:I

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mSummaryColumn:Ljava/lang/String;

    if-nez p1, :cond_2

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mSummaryIndex:I

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iget p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mLayoutResId:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setCheckboxState(IILandroid/widget/ListView;)V
    .locals 1

    invoke-virtual {p3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    if-ltz v0, :cond_1

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/support/dialog/R$id;->checkbox:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p3, p1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListCursorAdapter;->mCheckBoxStates:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
