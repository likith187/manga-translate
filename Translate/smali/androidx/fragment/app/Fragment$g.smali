.class Landroidx/fragment/app/Fragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Landroidx/fragment/app/Fragment$g;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/Fragment$g;->a:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/fragment/app/Fragment$l;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
