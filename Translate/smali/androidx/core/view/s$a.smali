.class public final Landroidx/core/view/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/s;->a(Landroid/view/Menu;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Landroid/view/Menu;


# direct methods
.method constructor <init>(Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/s$a;->b:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuItem;
    .locals 3

    iget-object v0, p0, Landroidx/core/view/s$a;->b:Landroid/view/Menu;

    iget v1, p0, Landroidx/core/view/s$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/core/view/s$a;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/core/view/s$a;->a:I

    iget-object p0, p0, Landroidx/core/view/s$a;->b:Landroid/view/Menu;

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/s$a;->a()Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/s$a;->b:Landroid/view/Menu;

    iget v1, p0, Landroidx/core/view/s$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/core/view/s$a;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/Menu;->removeItem(I)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
