.class Landroidx/fragment/app/c$e;
.super Landroidx/fragment/app/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/c;->createFragmentContainer()Landroidx/fragment/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/i;

.field final synthetic b:Landroidx/fragment/app/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/c;Landroidx/fragment/app/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/c$e;->b:Landroidx/fragment/app/c;

    iput-object p2, p0, Landroidx/fragment/app/c$e;->a:Landroidx/fragment/app/i;

    invoke-direct {p0}, Landroidx/fragment/app/i;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c$e;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/c$e;->a:Landroidx/fragment/app/i;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/i;->c(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/c$e;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->onFindViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/c$e;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/c$e;->b:Landroidx/fragment/app/c;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->onHasView()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
