.class Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/n;

.field private final b:Landroidx/fragment/app/y;

.field private final c:Landroidx/fragment/app/Fragment;

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/w;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/w;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/w;->d:Z

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Landroidx/fragment/app/w;->e:I

    .line 18
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    .line 19
    iput-object p2, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    .line 20
    iput-object p3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 p0, 0x0

    .line 21
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 22
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 23
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 24
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 25
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 26
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 27
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 28
    iget-object p0, p4, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 29
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    .line 30
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Ljava/lang/ClassLoader;Landroidx/fragment/app/k;Landroidx/fragment/app/FragmentState;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/w;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/w;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    .line 12
    invoke-virtual {p5, p4, p3}, Landroidx/fragment/app/FragmentState;->a(Landroidx/fragment/app/k;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 p0, 0x2

    .line 13
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Instantiated fragment "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private l(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private q()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/n;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/w;->t()V

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    const-string v2, "android:view_registry_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_7

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_6
    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean p0, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/fragment/app/n;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->j(Landroidx/fragment/app/Fragment;)I

    move-result v0

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method c()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ATTACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    const-string v5, "Fragment "

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->n(Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/y;->n(Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/w;->m()V

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->u0()Landroidx/fragment/app/l;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/l;

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->x0()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/n;->g(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p0, v2}, Landroidx/fragment/app/n;->b(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method d()I
    .locals 9

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v1, :cond_0

    iget p0, v0, Landroidx/fragment/app/Fragment;->mState:I

    return p0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/w;->e:I

    sget-object v2, Landroidx/fragment/app/w$b;->a:[I

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/l$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v8, :cond_5

    iget v0, p0, Landroidx/fragment/app/w;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v8, p0, Landroidx/fragment/app/w;->e:I

    if-ge v8, v5, :cond_6

    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v8, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/fragment/app/f0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/f0;->l(Landroidx/fragment/app/w;)Landroidx/fragment/app/f0$e$b;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    sget-object v8, Landroidx/fragment/app/f0$e$b;->ADDING:Landroidx/fragment/app/f0$e$b;

    if-ne v0, v8, :cond_a

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_a
    sget-object v8, Landroidx/fragment/app/f0$e$b;->REMOVING:Landroidx/fragment/app/f0$e$b;

    if-ne v0, v8, :cond_b

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_d
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v3, :cond_e

    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v2, :cond_e

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeExpectedState() of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v1
.end method

.method e()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/n;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p0, v1, v3}, Landroidx/fragment/app/n;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    :goto_0
    return-void
.end method

.method f()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v3, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v3, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p0()Landroidx/fragment/app/i;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/i;->c(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v4, v2, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    instance-of v2, v3, Landroidx/fragment/app/FragmentContainerView;

    if-nez v2, :cond_7

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v2, v3}, Li0/c;->n(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for a container view with no id"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3, v4}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x2

    if-eqz v0, :cond_c

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v6, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/w;->b()V

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_9

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/m0;->N(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/w$a;

    invoke-direct {v3, p0, v0}, Landroidx/fragment/app/w$a;-><init>(Landroidx/fragment/app/w;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v5, v6, v4}, Landroidx/fragment/app/n;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_c

    if-nez v0, :cond_c

    iget-object v0, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Saved focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput v2, p0, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method g()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v4, v1}, Landroidx/fragment/app/y;->B(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    :cond_2
    if-nez v0, :cond_5

    iget-object v4, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v4}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/u;->q(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/y;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput v2, p0, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_4

    :cond_5
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/l;

    instance-of v5, v4, Landroidx/lifecycle/x0;

    if-eqz v5, :cond_6

    iget-object v3, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v3}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/u;->n()Z

    move-result v3

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v4

    xor-int/2addr v3, v4

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v0, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v0

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/u;->f(Landroidx/fragment/app/Fragment;)V

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/n;->d(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/w;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/y;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/y;->s(Landroidx/fragment/app/w;)V

    :goto_4
    return-void
.end method

.method h()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/n;->n(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/d0;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method i()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "movefrom ATTACHED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    iget-object v1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/n;->e(Landroidx/fragment/app/Fragment;Z)V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/l;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/u;->q(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState called for fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->initState()V

    :cond_3
    return-void
.end method

.method j()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATE_VIEW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/n;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    :cond_2
    return-void
.end method

.method k()Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method m()V
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/w;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/w;->d:Z

    move v4, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/w;->d()I

    move-result v5

    iget-object v6, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v7, v6, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v8, 0x3

    if-eq v5, v7, :cond_9

    if-le v5, v7, :cond_3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/w;->p()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :pswitch_1
    const/4 v4, 0x6

    iput v4, v6, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/w;->v()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v4, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, v6, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/fragment/app/f0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/f0;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Landroidx/fragment/app/f0$e$c;->from(I)Landroidx/fragment/app/f0$e$c;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Landroidx/fragment/app/f0;->b(Landroidx/fragment/app/f0$e$c;Landroidx/fragment/app/w;)V

    :cond_2
    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x4

    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/w;->a()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/w;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/w;->f()V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/w;->e()V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/w;->c()V

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/w;->n()V

    goto/16 :goto_2

    :pswitch_9
    const/4 v4, 0x5

    iput v4, v6, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/w;->w()V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/w;->s()V

    goto :goto_1

    :cond_5
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/w;->t()V

    :cond_6
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/fragment/app/f0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/f0;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroidx/fragment/app/f0;->d(Landroidx/fragment/app/w;)V

    :cond_7
    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput v8, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_2

    :pswitch_c
    iput-boolean v0, v6, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iput v1, v6, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/w;->h()V

    iget-object v4, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput v3, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_2

    :pswitch_e
    iget-boolean v4, v6, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    iget-object v5, v6, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/y;->q(Ljava/lang/String;)Landroidx/fragment/app/FragmentState;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/w;->s()V

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/w;->g()V

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/w;->i()V

    :goto_2
    move v4, v3

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_c

    const/4 v1, -0x1

    if-ne v7, v1, :cond_c

    iget-boolean v1, v6, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_c

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-nez v1, :cond_c

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/u;->f(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/y;->s(Landroidx/fragment/app/w;)V

    invoke-static {v8}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initState called for fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->initState()V

    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v2, :cond_10

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_e

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/fragment/app/f0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/f0;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_d

    invoke-virtual {v1, p0}, Landroidx/fragment/app/f0;->c(Landroidx/fragment/app/w;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v1, p0}, Landroidx/fragment/app/f0;->e(Landroidx/fragment/app/w;)V

    :cond_e
    :goto_3
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->F0(Landroidx/fragment/app/Fragment;)V

    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    iput-boolean v0, p0, Landroidx/fragment/app/w;->d:Z

    return-void

    :goto_4
    iput-boolean v0, p0, Landroidx/fragment/app/w;->d:Z

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method n()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/n;->f(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method o(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iget-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    iget-object p1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    :cond_3
    return-void
.end method

.method p()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroidx/fragment/app/w;->l(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Restoring focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v0, "succeeded"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/n;->i(Landroidx/fragment/app/Fragment;Z)V

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void
.end method

.method r()Landroidx/fragment/app/Fragment$SavedState;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/w;->q()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v2, Landroidx/fragment/app/Fragment$SavedState;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v2
.end method

.method s()V
    .locals 4

    new-instance v0, Landroidx/fragment/app/FragmentState;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroidx/fragment/app/w;->q()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    iget-object v2, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    const-string v3, "android:target_state"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    const-string v3, "android:target_req_state"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->p:Landroid/os/Bundle;

    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/w;->b:Landroidx/fragment/app/y;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/y;->B(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    return-void
.end method

.method t()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving view state for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/d0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/d0;->e(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_3
    return-void
.end method

.method u(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/w;->e:I

    return-void
.end method

.method v()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/n;->k(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method w()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/n;

    iget-object p0, p0, Landroidx/fragment/app/w;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/n;->l(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
