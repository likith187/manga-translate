.class public final Landroidx/lifecycle/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/l$b;

.field private b:Landroidx/lifecycle/p;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/r;Landroidx/lifecycle/l$b;)V
    .locals 1

    const-string v0, "initialState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/lifecycle/x;->f(Ljava/lang/Object;)Landroidx/lifecycle/p;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/u$b;->b:Landroidx/lifecycle/p;

    iput-object p2, p0, Landroidx/lifecycle/u$b;->a:Landroidx/lifecycle/l$b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/l$a;->getTargetState()Landroidx/lifecycle/l$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/u;->k:Landroidx/lifecycle/u$a;

    iget-object v2, p0, Landroidx/lifecycle/u$b;->a:Landroidx/lifecycle/l$b;

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/u$a;->a(Landroidx/lifecycle/l$b;Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/u$b;->a:Landroidx/lifecycle/l$b;

    iget-object v1, p0, Landroidx/lifecycle/u$b;->b:Landroidx/lifecycle/p;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/p;->onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    iput-object v0, p0, Landroidx/lifecycle/u$b;->a:Landroidx/lifecycle/l$b;

    return-void
.end method

.method public final b()Landroidx/lifecycle/l$b;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/u$b;->a:Landroidx/lifecycle/l$b;

    return-object p0
.end method
