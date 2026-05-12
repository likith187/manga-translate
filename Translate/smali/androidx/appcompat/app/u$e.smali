.class Landroidx/appcompat/app/u$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/AppCompatDelegateImpl$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/u$e;->a:Landroidx/appcompat/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/u$e;->a:Landroidx/appcompat/app/u;

    iget-boolean v0, p1, Landroidx/appcompat/app/u;->d:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p1}, Landroidx/appcompat/widget/t;->c()V

    iget-object p0, p0, Landroidx/appcompat/app/u$e;->a:Landroidx/appcompat/app/u;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/u;->d:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/u$e;->a:Landroidx/appcompat/app/u;

    iget-object p0, p0, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p0}, Landroidx/appcompat/widget/t;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
