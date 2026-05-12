.class Landroidx/fragment/app/Fragment$j;
.super Landroidx/fragment/app/Fragment$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->h(Ld/a;Lj/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj/a;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Ld/a;

.field final synthetic d:Landroidx/activity/result/a;

.field final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Lj/a;Ljava/util/concurrent/atomic/AtomicReference;Ld/a;Landroidx/activity/result/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$j;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$j;->a:Lj/a;

    iput-object p3, p0, Landroidx/fragment/app/Fragment$j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/Fragment$j;->c:Ld/a;

    iput-object p5, p0, Landroidx/fragment/app/Fragment$j;->d:Landroidx/activity/result/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$n;-><init>(Landroidx/fragment/app/Fragment$b;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/Fragment$j;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment$j;->a:Lj/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lj/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/d;

    iget-object v2, p0, Landroidx/fragment/app/Fragment$j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroidx/fragment/app/Fragment$j;->e:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Landroidx/fragment/app/Fragment$j;->c:Ld/a;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$j;->d:Landroidx/activity/result/a;

    invoke-virtual {v1, v0, v3, v4, p0}, Landroidx/activity/result/d;->l(Ljava/lang/String;Landroidx/lifecycle/s;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
