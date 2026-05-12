.class public final synthetic Landroidx/core/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Landroidx/core/view/q;

.field public final synthetic b:Landroidx/lifecycle/l$b;

.field public final synthetic c:Landroidx/core/view/t;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/q;Landroidx/lifecycle/l$b;Landroidx/core/view/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/o;->a:Landroidx/core/view/q;

    iput-object p2, p0, Landroidx/core/view/o;->b:Landroidx/lifecycle/l$b;

    iput-object p3, p0, Landroidx/core/view/o;->c:Landroidx/core/view/t;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/o;->a:Landroidx/core/view/q;

    iget-object v1, p0, Landroidx/core/view/o;->b:Landroidx/lifecycle/l$b;

    iget-object p0, p0, Landroidx/core/view/o;->c:Landroidx/core/view/t;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/core/view/q;->a(Landroidx/core/view/q;Landroidx/lifecycle/l$b;Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method
