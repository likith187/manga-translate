.class public Lcom/coui/appcompat/searchview/COUISearchView;
.super Landroidx/appcompat/widget/SearchView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchView$COUISearchAutoComplete;
    }
.end annotation


# instance fields
.field private mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

.field private mIsHintTextSize:Z

.field private mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mIsHintTextSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mIsHintTextSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mIsHintTextSize:Z

    .line 7
    sget p1, Lcom/support/toolbar/R$id;->search_animation_layout:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    return-void
.end method

.method private changeTextSize(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_searchview_text_hint_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mIsHintTextSize:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mIsHintTextSize:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/toolbar/R$dimen;->coui_searchview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mIsHintTextSize:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getHintAnimationLayout()Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mCOUIHintAnimationLayout:Lcom/coui/appcompat/searchview/COUIHintAnimationLayout;

    return-object p0
.end method

.method public getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Landroidx/appcompat/widget/SearchView;

    const-string v1, "mSearchSrcTextView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method
