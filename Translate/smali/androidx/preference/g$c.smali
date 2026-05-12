.class Landroidx/preference/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/g;->n(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/Preference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroidx/preference/g;


# direct methods
.method constructor <init>(Landroidx/preference/g;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/g$c;->c:Landroidx/preference/g;

    iput-object p2, p0, Landroidx/preference/g$c;->a:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/g$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroidx/preference/g$c;->c:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceGroup$c;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter must implement PreferencePositionCallback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/preference/g$c;->a:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Landroidx/preference/PreferenceGroup$c;

    invoke-interface {v2, v1}, Landroidx/preference/PreferenceGroup$c;->e(Landroidx/preference/Preference;)I

    move-result v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    iget-object v2, p0, Landroidx/preference/g$c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$c;->c(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object p0, p0, Landroidx/preference/g$c;->c:Landroidx/preference/g;

    iget-object p0, p0, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/preference/g$e;

    iget-object v2, p0, Landroidx/preference/g$c;->c:Landroidx/preference/g;

    iget-object v2, v2, Landroidx/preference/g;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/preference/g$c;->a:Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/g$c;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, p0}, Landroidx/preference/g$e;-><init>(Landroidx/recyclerview/widget/RecyclerView$h;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    :goto_1
    return-void
.end method
