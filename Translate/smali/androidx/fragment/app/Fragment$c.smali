.class Landroidx/fragment/app/Fragment$c;
.super Landroidx/fragment/app/Fragment$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$n;-><init>(Landroidx/fragment/app/Fragment$b;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lq0/g;

    invoke-virtual {v0}, Lq0/g;->c()V

    iget-object p0, p0, Landroidx/fragment/app/Fragment$c;->a:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/lifecycle/k0;->c(Lq0/h;)V

    return-void
.end method
