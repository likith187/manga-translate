.class Landroidx/preference/g$e;
.super Landroidx/recyclerview/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$h;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Landroidx/preference/Preference;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$h;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>()V

    iput-object p1, p0, Landroidx/preference/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    iput-object p2, p0, Landroidx/preference/g$e;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Landroidx/preference/g$e;->c:Landroidx/preference/Preference;

    iput-object p4, p0, Landroidx/preference/g$e;->d:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroidx/preference/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$h;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    iget-object v0, p0, Landroidx/preference/g$e;->c:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/preference/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$c;->e(Landroidx/preference/Preference;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/preference/g$e;->a:Landroidx/recyclerview/widget/RecyclerView$h;

    check-cast v0, Landroidx/preference/PreferenceGroup$c;

    iget-object v1, p0, Landroidx/preference/g$e;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$c;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Landroidx/preference/g$e;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/g$e;->a()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/g$e;->a()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/g$e;->a()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/g$e;->a()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/g$e;->a()V

    return-void
.end method
