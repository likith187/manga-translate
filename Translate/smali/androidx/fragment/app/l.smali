.class public abstract Landroidx/fragment/app/l;
.super Landroidx/fragment/app/i;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final f:I

.field final h:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/i;-><init>()V

    .line 3
    new-instance v0, Landroidx/fragment/app/t;

    invoke-direct {v0}, Landroidx/fragment/app/t;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/l;->h:Landroidx/fragment/app/FragmentManager;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/l;->a:Landroid/app/Activity;

    .line 5
    const-string p1, "context == null"

    invoke-static {p2, p1}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/fragment/app/l;->b:Landroid/content/Context;

    .line 6
    const-string p1, "handler == null"

    invoke-static {p3, p1}, Lc0/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroidx/fragment/app/l;->c:Landroid/os/Handler;

    .line 7
    iput p4, p0, Landroidx/fragment/app/l;->f:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/l;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method e()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l;->a:Landroid/app/Activity;

    return-object p0
.end method

.method f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l;->b:Landroid/content/Context;

    return-object p0
.end method

.method public g()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/l;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public abstract h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract i()Ljava/lang/Object;
.end method

.method public abstract j()Landroid/view/LayoutInflater;
.end method

.method public k(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public abstract l(Ljava/lang/String;)Z
.end method

.method public m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/l;->b:Landroid/content/Context;

    invoke-static {p0, p2, p4}, Lr/a;->j(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9

    const/4 v0, -0x1

    move v3, p3

    if-ne v3, v0, :cond_0

    move-object v0, p0

    iget-object v1, v0, Landroidx/fragment/app/l;->a:Landroid/app/Activity;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Landroidx/core/app/a;->t(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract o()V
.end method
