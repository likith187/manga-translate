.class public Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
.super Landroidx/preference/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIActivityDialogFragment$CheckedItemAdapter;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mDialog:Landroidx/appcompat/app/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/c;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Landroidx/appcompat/app/o;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mDialog:Landroidx/appcompat/app/o;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)Lcom/coui/appcompat/preference/COUIActivityDialogPreference;
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object p0

    return-object p0
.end method

.method private getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    return-object p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getStatusBarView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIActivityDialogFragment;
    .locals 3

    new-instance v0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    new-instance p1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/support/dialog/R$style;->Theme_COUI_ActivityDialog:I

    invoke-direct {p1, p0, v0, v1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$1;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mDialog:Landroidx/appcompat/app/o;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    invoke-static {}, Lcom/coui/appcompat/version/COUIVersionUtil;->getOSVersionCode()I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/preference/R$bool;->list_status_white_enabled:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v6, 0x6

    if-ge v4, v6, :cond_0

    if-nez v4, :cond_3

    :cond_0
    const/high16 v4, -0x80000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    and-int/lit16 v0, v3, -0x2011

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    or-int/lit16 v0, v3, 0x2000

    goto :goto_0

    :cond_2
    or-int/lit16 v0, v3, 0x100

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/support/preference/R$layout;->coui_preference_listview:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget v0, Lcom/support/preference/R$id;->toolbar:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$drawable;->coui_back_arrow:I

    invoke-static {v2, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$2;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/support/preference/R$id;->abl:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    sget v3, Lcom/support/preference/R$id;->coui_preference_listview:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ListView;

    sget v3, Lcom/support/preference/R$id;->divider_line:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/preference/R$bool;->is_dialog_preference_immersive:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroidx/core/view/m0;->x0(Landroid/view/View;Z)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getStatusBarView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;

    invoke-direct {v1, p0, v2, v9}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$3;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/ListView;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v1

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v11, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/support/preference/R$layout;->coui_preference_listview_item:I

    sget v4, Lcom/support/preference/R$id;->checkedtextview:I

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v11

    move-object v1, p0

    move-object v6, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment$4;-><init>(Lcom/coui/appcompat/preference/COUIActivityDialogFragment;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;Landroidx/appcompat/app/o;)V

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    invoke-virtual {v9, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-virtual {p1, v8}, Landroidx/appcompat/app/o;->setContentView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->getListPreference()Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->mClickedDialogEntryIndex:I

    aget-object p0, p1, p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/c;->onStart()V

    invoke-virtual {p0}, Landroidx/preference/f;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->dismiss()V

    :cond_0
    return-void
.end method
