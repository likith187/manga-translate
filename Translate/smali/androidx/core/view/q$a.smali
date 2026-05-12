.class Landroidx/core/view/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/l;

.field private b:Landroidx/lifecycle/p;


# direct methods
.method constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/q$a;->a:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/core/view/q$a;->b:Landroidx/lifecycle/p;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/r;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/q$a;->a:Landroidx/lifecycle/l;

    iget-object v1, p0, Landroidx/core/view/q$a;->b:Landroidx/lifecycle/p;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/r;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/q$a;->b:Landroidx/lifecycle/p;

    return-void
.end method
