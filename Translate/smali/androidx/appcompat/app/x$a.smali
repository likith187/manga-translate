.class Landroidx/appcompat/app/x$a;
.super Landroidx/core/view/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/x;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/x;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    invoke-direct {p0}, Landroidx/core/view/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    iget-boolean v0, p1, Landroidx/appcompat/app/x;->t:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/appcompat/app/x;->h:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    iget-object p1, p1, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    iget-object p1, p1, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    iget-object p1, p1, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    invoke-virtual {p1}, Landroidx/appcompat/app/x;->y()V

    iget-object p0, p0, Landroidx/appcompat/app/x$a;->a:Landroidx/appcompat/app/x;

    iget-object p0, p0, Landroidx/appcompat/app/x;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    :cond_1
    return-void
.end method
