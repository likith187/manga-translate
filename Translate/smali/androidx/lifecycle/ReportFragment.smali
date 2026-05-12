.class public Landroidx/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ReportFragment$a;,
        Landroidx/lifecycle/ReportFragment$b;,
        Landroidx/lifecycle/ReportFragment$c;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/ReportFragment$b;


# instance fields
.field private a:Landroidx/lifecycle/ReportFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/ReportFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/ReportFragment$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/ReportFragment;->b:Landroidx/lifecycle/ReportFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private final a(Landroidx/lifecycle/l$a;)V
    .locals 0

    return-void
.end method

.method private final b(Landroidx/lifecycle/ReportFragment$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$a;->a()V

    :cond_0
    return-void
.end method

.method private final c(Landroidx/lifecycle/ReportFragment$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$a;->b()V

    :cond_0
    return-void
.end method

.method private final d(Landroidx/lifecycle/ReportFragment$a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/ReportFragment$a;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->b(Landroidx/lifecycle/ReportFragment$a;)V

    sget-object p1, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    invoke-direct {p0, p1}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/l$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->c(Landroidx/lifecycle/ReportFragment$a;)V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/lifecycle/ReportFragment;->a:Landroidx/lifecycle/ReportFragment$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->d(Landroidx/lifecycle/ReportFragment$a;)V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/ReportFragment;->a(Landroidx/lifecycle/l$a;)V

    return-void
.end method
