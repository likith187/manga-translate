.class Landroidx/appcompat/app/x$b;
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

    iput-object p1, p0, Landroidx/appcompat/app/x$b;->a:Landroidx/appcompat/app/x;

    invoke-direct {p0}, Landroidx/core/view/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/x$b;->a:Landroidx/appcompat/app/x;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/app/x;->y:Landroidx/appcompat/view/h;

    iget-object p0, p0, Landroidx/appcompat/app/x;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
