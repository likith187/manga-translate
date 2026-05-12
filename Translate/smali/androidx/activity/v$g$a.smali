.class public final Landroidx/activity/v$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/v$g;->a(Lw8/l;Lw8/l;Lw8/a;Lw8/a;)Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/l;

.field final synthetic b:Lw8/l;

.field final synthetic c:Lw8/a;

.field final synthetic d:Lw8/a;


# direct methods
.method constructor <init>(Lw8/l;Lw8/l;Lw8/a;Lw8/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/v$g$a;->a:Lw8/l;

    iput-object p2, p0, Landroidx/activity/v$g$a;->b:Lw8/l;

    iput-object p3, p0, Landroidx/activity/v$g$a;->c:Lw8/a;

    iput-object p4, p0, Landroidx/activity/v$g$a;->d:Lw8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/v$g$a;->d:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onBackInvoked()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/v$g$a;->c:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/v$g$a;->b:Lw8/l;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/v$g$a;->a:Lw8/l;

    new-instance v0, Landroidx/activity/b;

    invoke-direct {v0, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {p0, v0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
