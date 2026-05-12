.class Landroidx/transition/t$b;
.super Landroidx/transition/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/t;->prepareAnimatorsForSeeking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/t;


# direct methods
.method constructor <init>(Landroidx/transition/t;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/t$b;->a:Landroidx/transition/t;

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/t$b;->a:Landroidx/transition/t;

    iget-object v0, v0, Landroidx/transition/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/transition/t$b;->a:Landroidx/transition/t;

    invoke-virtual {p1}, Landroidx/transition/t;->hasAnimators()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/transition/t$b;->a:Landroidx/transition/t;

    sget-object v0, Landroidx/transition/j$j;->c:Landroidx/transition/j$j;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/transition/j;->notifyListeners(Landroidx/transition/j$j;Z)V

    iget-object p0, p0, Landroidx/transition/t$b;->a:Landroidx/transition/t;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/j;->mEnded:Z

    sget-object p1, Landroidx/transition/j$j;->b:Landroidx/transition/j$j;

    invoke-virtual {p0, p1, v1}, Landroidx/transition/j;->notifyListeners(Landroidx/transition/j$j;Z)V

    :cond_0
    return-void
.end method
