.class public Landroidx/appcompat/widget/MenuPopupWindow;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;,
        Landroidx/appcompat/widget/MenuPopupWindow$a;,
        Landroidx/appcompat/widget/MenuPopupWindow$b;
    }
.end annotation


# instance fields
.field private J:Landroidx/appcompat/widget/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->I:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$a;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    return-void
.end method

.method public P(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->I:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$a;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    return-void
.end method

.method public Q(Landroidx/appcompat/widget/y;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow;->J:Landroidx/appcompat/widget/y;

    return-void
.end method

.method public R(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->I:Landroid/widget/PopupWindow;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$b;->a(Landroid/widget/PopupWindow;Z)V

    return-void
.end method

.method n(Landroid/content/Context;Z)Landroidx/appcompat/widget/v;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroidx/appcompat/widget/y;)V

    return-object v0
.end method

.method public onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->J:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/y;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->J:Landroidx/appcompat/widget/y;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/y;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method
