.class public final synthetic Landroidx/core/view/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# instance fields
.field public final synthetic a:Landroidx/core/view/q;

.field public final synthetic b:Landroidx/core/view/t;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/q;Landroidx/core/view/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/p;->a:Landroidx/core/view/q;

    iput-object p2, p0, Landroidx/core/view/p;->b:Landroidx/core/view/t;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/p;->a:Landroidx/core/view/q;

    iget-object p0, p0, Landroidx/core/view/p;->b:Landroidx/core/view/t;

    invoke-static {v0, p0, p1, p2}, Landroidx/core/view/q;->b(Landroidx/core/view/q;Landroidx/core/view/t;Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V

    return-void
.end method
