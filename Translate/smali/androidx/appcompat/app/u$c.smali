.class final Landroidx/appcompat/app/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroidx/appcompat/app/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/u$c;->b:Landroidx/appcompat/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-boolean p2, p0, Landroidx/appcompat/app/u$c;->a:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/appcompat/app/u$c;->a:Z

    iget-object p2, p0, Landroidx/appcompat/app/u$c;->b:Landroidx/appcompat/app/u;

    iget-object p2, p2, Landroidx/appcompat/app/u;->a:Landroidx/appcompat/widget/t;

    invoke-interface {p2}, Landroidx/appcompat/widget/t;->h()V

    iget-object p2, p0, Landroidx/appcompat/app/u$c;->b:Landroidx/appcompat/app/u;

    iget-object p2, p2, Landroidx/appcompat/app/u;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/u$c;->a:Z

    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/u$c;->b:Landroidx/appcompat/app/u;

    iget-object p0, p0, Landroidx/appcompat/app/u;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0
.end method
