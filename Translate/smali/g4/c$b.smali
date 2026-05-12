.class Lg4/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/window/OnBackInvokedCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg4/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg4/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg4/b;Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lg4/c$b;->a:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/coui/appcompat/panel/a;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lg4/c$b;->c(Lg4/b;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Lg4/c$b;->a:Landroid/window/OnBackInvokedCallback;

    if-eqz p3, :cond_2

    const p0, 0xf4240

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p2, p0, p1}, Landroidx/appcompat/app/l;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/coui/appcompat/panel/a;->a(Landroid/view/View;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg4/c$b;->a:Landroid/window/OnBackInvokedCallback;

    invoke-static {p1, v0}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg4/c$b;->a:Landroid/window/OnBackInvokedCallback;

    return-void
.end method

.method c(Lg4/b;)Landroid/window/OnBackInvokedCallback;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lg4/d;

    invoke-direct {p0, p1}, Lg4/d;-><init>(Lg4/b;)V

    return-object p0
.end method

.method d()Z
    .locals 0

    iget-object p0, p0, Lg4/c$b;->a:Landroid/window/OnBackInvokedCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
