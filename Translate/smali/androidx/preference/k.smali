.class public Landroidx/preference/k;
.super Landroidx/recyclerview/widget/v;
.source "SourceFile"


# instance fields
.field final a:Landroidx/recyclerview/widget/RecyclerView;

.field final b:Landroidx/core/view/a;

.field final c:Landroidx/core/view/a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/v;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/v;->getItemDelegate()Landroidx/core/view/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/k;->b:Landroidx/core/view/a;

    new-instance v0, Landroidx/preference/k$a;

    invoke-direct {v0, p0}, Landroidx/preference/k$a;-><init>(Landroidx/preference/k;)V

    iput-object v0, p0, Landroidx/preference/k;->c:Landroidx/core/view/a;

    iput-object p1, p0, Landroidx/preference/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroidx/core/view/a;
    .locals 0

    iget-object p0, p0, Landroidx/preference/k;->c:Landroidx/core/view/a;

    return-object p0
.end method
