.class final Lcom/coloros/translate/widget/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/coloros/translate/widget/e;

.field private final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/widget/d$a;Lcom/coloros/translate/widget/e;)V
    .locals 1

    const-string v0, "caller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coloros/translate/widget/d$b;->a:Lcom/coloros/translate/widget/e;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/coloros/translate/widget/d$a;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/coloros/translate/widget/d$a;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/coloros/translate/widget/d$a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/coloros/translate/widget/d$a;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/coloros/translate/widget/d$b;->a:Lcom/coloros/translate/widget/e;

    sget-object p3, Lcom/coloros/translate/widget/e;->NEED_DISMISS_DIALOG:Lcom/coloros/translate/widget/e;

    if-ne p2, p3, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/widget/d$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/coloros/translate/widget/d$a;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/coloros/translate/widget/d$a;->a(Z)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
