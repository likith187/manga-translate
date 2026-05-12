.class Landroidx/appcompat/widget/ActionMenuPresenter$d$a;
.super Landroidx/appcompat/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ActionMenuPresenter;

.field final synthetic b:Landroidx/appcompat/widget/ActionMenuPresenter$d;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter$d;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iput-object p3, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/x;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object p0

    return-object p0
.end method

.method public onForwardingStarted()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->u()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onForwardingStopped()Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d$a;->b:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$d;->a:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->l()Z

    const/4 p0, 0x1

    return p0
.end method
