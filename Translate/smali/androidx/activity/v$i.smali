.class final Landroidx/activity/v$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field private final a:Landroidx/activity/u;

.field final synthetic b:Landroidx/activity/v;


# direct methods
.method public constructor <init>(Landroidx/activity/v;Landroidx/activity/u;)V
    .locals 1

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/v$i;->b:Landroidx/activity/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/v$i;->b:Landroidx/activity/v;

    invoke-static {v0}, Landroidx/activity/v;->b(Landroidx/activity/v;)Lkotlin/collections/h;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    invoke-virtual {v0, v1}, Lkotlin/collections/h;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/v$i;->b:Landroidx/activity/v;

    invoke-static {v0}, Landroidx/activity/v;->a(Landroidx/activity/v;)Landroidx/activity/u;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    invoke-virtual {v0}, Landroidx/activity/u;->c()V

    iget-object v0, p0, Landroidx/activity/v$i;->b:Landroidx/activity/v;

    invoke-static {v0, v1}, Landroidx/activity/v;->f(Landroidx/activity/v;Landroidx/activity/u;)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    invoke-virtual {v0, p0}, Landroidx/activity/u;->i(Landroidx/activity/c;)V

    iget-object v0, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    invoke-virtual {v0}, Landroidx/activity/u;->b()Lw8/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lw8/a;->invoke()Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/activity/v$i;->a:Landroidx/activity/u;

    invoke-virtual {p0, v1}, Landroidx/activity/u;->k(Lw8/a;)V

    return-void
.end method
