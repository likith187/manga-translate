.class Landroidx/fragment/app/Fragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
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

    iput-object p1, p0, Landroidx/fragment/app/Fragment$h;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)Landroidx/activity/result/d;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/Fragment$h;->a:Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/l;

    instance-of v0, p1, Landroidx/activity/result/e;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/activity/result/e;

    invoke-interface {p1}, Landroidx/activity/result/e;->getActivityResultRegistry()Landroidx/activity/result/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment$h;->a(Ljava/lang/Void;)Landroidx/activity/result/d;

    move-result-object p0

    return-object p0
.end method
