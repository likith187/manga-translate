.class Landroidx/appcompat/app/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/u;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/u$b;->a:Landroidx/appcompat/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/app/u$b;->a:Landroidx/appcompat/app/u;

    iget-object p0, p0, Landroidx/appcompat/app/u;->b:Landroid/view/Window$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
