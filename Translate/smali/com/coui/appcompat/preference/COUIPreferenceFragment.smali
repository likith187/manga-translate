.class public Lcom/coui/appcompat/preference/COUIPreferenceFragment;
.super Landroidx/preference/g;
.source "SourceFile"


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# instance fields
.field private mEnableInternalDivider:Z

.field private mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/g;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    return-void
.end method


# virtual methods
.method public getItemDecoration()Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    sget p3, Lcom/support/preference/R$layout;->coui_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setEnablePointerDownAction(Z)V

    invoke-virtual {p0}, Landroidx/preference/g;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$p;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$p;)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/g;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/preference/g;->setDividerHeight(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroidx/preference/g;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIActivityDialogPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIActivityDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIActivityDialogFragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIEditTextPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIEditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/coui/appcompat/preference/COUIMultiSelectListPreference;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIMultiSelectListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/coui/appcompat/preference/COUIListPreferenceDialogFragment;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/g;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/preference/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_1
    return-void
.end method

.method public setEnableCOUIPreferenceDivider(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/g;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/g;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_1
    new-instance v0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mEnableInternalDivider:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/g;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->mPreferenceItemDecoration:Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$o;)V

    :cond_2
    return-void
.end method
