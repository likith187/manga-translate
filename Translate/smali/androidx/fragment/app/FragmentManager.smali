.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$j;,
        Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;,
        Landroidx/fragment/app/FragmentManager$m;,
        Landroidx/fragment/app/FragmentManager$l;,
        Landroidx/fragment/app/FragmentManager$k;
    }
.end annotation


# static fields
.field private static S:Z = false


# instance fields
.field private A:Landroidx/fragment/app/k;

.field private B:Landroidx/fragment/app/g0;

.field private C:Landroidx/fragment/app/g0;

.field private D:Landroidx/activity/result/b;

.field private E:Landroidx/activity/result/b;

.field private F:Landroidx/activity/result/b;

.field G:Ljava/util/ArrayDeque;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/util/ArrayList;

.field private N:Ljava/util/ArrayList;

.field private O:Ljava/util/ArrayList;

.field private P:Landroidx/fragment/app/u;

.field private Q:Li0/c$c;

.field private R:Ljava/lang/Runnable;

.field private final a:Ljava/util/ArrayList;

.field private b:Z

.field private final c:Landroidx/fragment/app/y;

.field d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private final f:Landroidx/fragment/app/m;

.field private g:Landroidx/activity/v;

.field private final h:Landroidx/activity/u;

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private m:Ljava/util/ArrayList;

.field private final n:Landroidx/fragment/app/n;

.field private final o:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final p:Lc0/a;

.field private final q:Lc0/a;

.field private final r:Lc0/a;

.field private final s:Lc0/a;

.field private final t:Landroidx/core/view/t;

.field u:I

.field private v:Landroidx/fragment/app/l;

.field private w:Landroidx/fragment/app/i;

.field private x:Landroidx/fragment/app/Fragment;

.field y:Landroidx/fragment/app/Fragment;

.field private z:Landroidx/fragment/app/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    new-instance v0, Landroidx/fragment/app/y;

    invoke-direct {v0}, Landroidx/fragment/app/y;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    new-instance v0, Landroidx/fragment/app/m;

    invoke-direct {v0, p0}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/m;

    new-instance v0, Landroidx/fragment/app/FragmentManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/FragmentManager$b;-><init>(Landroidx/fragment/app/FragmentManager;Z)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/u;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->l:Ljava/util/Map;

    new-instance v0, Landroidx/fragment/app/n;

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroidx/fragment/app/o;

    invoke-direct {v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->p:Lc0/a;

    new-instance v0, Landroidx/fragment/app/p;

    invoke-direct {v0, p0}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->q:Lc0/a;

    new-instance v0, Landroidx/fragment/app/q;

    invoke-direct {v0, p0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->r:Lc0/a;

    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0, p0}, Landroidx/fragment/app/r;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->s:Lc0/a;

    new-instance v0, Landroidx/fragment/app/FragmentManager$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$c;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/core/view/t;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->z:Landroidx/fragment/app/k;

    new-instance v1, Landroidx/fragment/app/FragmentManager$d;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$d;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->A:Landroidx/fragment/app/k;

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Landroidx/fragment/app/g0;

    new-instance v0, Landroidx/fragment/app/FragmentManager$e;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$e;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->C:Landroidx/fragment/app/g0;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->G:Ljava/util/ArrayDeque;

    new-instance v0, Landroidx/fragment/app/FragmentManager$f;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManager$f;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->R:Ljava/lang/Runnable;

    return-void
.end method

.method static B0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 1

    sget v0, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static H0(I)Z
    .locals 1

    sget-boolean v0, Landroidx/fragment/app/FragmentManager;->S:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private I0(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez p0, :cond_1

    :cond_0
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private J0()Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->J0()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private K(Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method private synthetic P0()Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->o1()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private synthetic Q0(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->y(Landroid/content/res/Configuration;Z)V

    :cond_0
    return-void
.end method

.method private R(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/y;->d(I)V

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManager;->X0(IZ)V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/f0;

    invoke-virtual {v2}, Landroidx/fragment/app/f0;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    return-void

    :goto_1
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    throw p1
.end method

.method private synthetic R0(Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->E(Z)V

    :cond_0
    return-void
.end method

.method private synthetic S0(Landroidx/core/app/e;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/core/app/e;->a()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->F(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic T0(Landroidx/core/app/o;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/core/app/o;->a()Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->M(ZZ)V

    :cond_0
    return-void
.end method

.method private U()V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->L:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->L:Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->w1()V

    :cond_0
    return-void
.end method

.method private W()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Y(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->g()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->p()V

    :cond_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->R0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Landroidx/fragment/app/FragmentManager;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->P0()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static b0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->x(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->C()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->x(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->B()V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Landroidx/fragment/app/FragmentManager;Landroidx/core/app/o;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->T0(Landroidx/core/app/o;)V

    return-void
.end method

.method private c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 8

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v0, v0, Landroidx/fragment/app/z;->r:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v2}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->y0()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p3

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v3, p4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/a;->D(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v1}, Landroidx/fragment/app/a;->G(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :goto_2
    if-nez v4, :cond_3

    iget-boolean v4, v6, Landroidx/fragment/app/z;->i:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    move v4, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    if-lt v0, v5, :cond_7

    move v0, p3

    :goto_5
    if-ge v0, p4, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v1, v1, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z$a;

    iget-object v2, v2, Landroidx/fragment/app/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/y;->r(Landroidx/fragment/app/w;)V

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    invoke-static {p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->b0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v1, p3

    :goto_7
    if-ge v1, p4, :cond_c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    if-eqz v0, :cond_9

    iget-object v3, v2, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_8
    if-ltz v3, :cond_b

    iget-object v6, v2, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/z$a;

    iget-object v6, v6, Landroidx/fragment/app/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_8

    invoke-virtual {p0, v6}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/w;->m()V

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_9
    iget-object v2, v2, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/z$a;

    iget-object v3, v3, Landroidx/fragment/app/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_a

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/w;->m()V

    goto :goto_9

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    iget v1, p0, Landroidx/fragment/app/FragmentManager;->u:I

    invoke-virtual {p0, v1, v5}, Landroidx/fragment/app/FragmentManager;->X0(IZ)V

    invoke-direct {p0, p1, p3, p4}, Landroidx/fragment/app/FragmentManager;->t(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/f0;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/f0;->r(Z)V

    invoke-virtual {v2}, Landroidx/fragment/app/f0;->p()V

    invoke-virtual {v2}, Landroidx/fragment/app/f0;->g()V

    goto :goto_a

    :cond_d
    :goto_b
    if-ge p3, p4, :cond_f

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, v0, Landroidx/fragment/app/a;->v:I

    if-ltz v1, :cond_e

    const/4 v1, -0x1

    iput v1, v0, Landroidx/fragment/app/a;->v:I

    :cond_e
    invoke-virtual {v0}, Landroidx/fragment/app/a;->F()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_f
    if-eqz v4, :cond_10

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->l1()V

    :cond_10
    return-void
.end method

.method public static synthetic d(Landroidx/fragment/app/FragmentManager;Landroidx/core/app/e;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->S0(Landroidx/core/app/e;)V

    return-void
.end method

.method public static synthetic e(Landroidx/fragment/app/FragmentManager;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Q0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private e1(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->Y(Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->c1()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManager;->f1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentManager;->j1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q()V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->z1()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->U()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->b()V

    return p1
.end method

.method static synthetic f(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/y;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    return-object p0
.end method

.method private f0(Ljava/lang/String;IZ)I
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    if-eqz p3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Landroidx/fragment/app/a;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-ltz p2, :cond_4

    iget v2, v2, Landroidx/fragment/app/a;->v:I

    if-ne p2, v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-gez v0, :cond_6

    return v0

    :cond_6
    if-eqz p3, :cond_9

    :goto_2
    if-lez v0, :cond_b

    iget-object p3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/a;

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Landroidx/fragment/app/a;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    if-ltz p2, :cond_b

    iget p3, p3, Landroidx/fragment/app/a;->v:I

    if-ne p2, p3, :cond_b

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne v0, p0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    :cond_b
    return v0

    :cond_c
    :goto_3
    return v1
.end method

.method static j0(Landroid/view/View;)Landroidx/fragment/app/FragmentManager;
    .locals 4

    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->k0(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " that owns View "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has already been destroyed. Nested fragments should always use the child FragmentManager."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_1

    :cond_2
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not within a subclass of FragmentActivity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/z;->r:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManager;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/z;->r:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManager;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManager;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static k0(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->B0(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private l0()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->s()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->k()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l1()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private m0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManager$l;

    invoke-interface {v4, p1, p2}, Landroidx/fragment/app/FragmentManager$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {p1}, Landroidx/fragment/app/l;->g()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->R:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return v3

    :goto_1
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {p2}, Landroidx/fragment/app/l;->g()Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->R:Ljava/lang/Runnable;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static n1(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1004

    const/16 v1, 0x2005

    if-eq p0, v1, :cond_2

    const/16 v2, 0x1003

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method private o0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->O0()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v1, v0, Landroidx/lifecycle/x0;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/u;->n()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackState;

    iget-object v1, v1, Landroidx/fragment/app/BackStackState;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v3}, Landroidx/fragment/app/y;->p()Landroidx/fragment/app/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/u;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private r0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/i;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/i;->c(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_2
    return-object v1
.end method

.method private s()Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/y;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/w;

    invoke-virtual {v2}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/g0;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/fragment/app/f0;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/g0;)Landroidx/fragment/app/f0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private t(Ljava/util/ArrayList;II)Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-object v1, v1, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z$a;

    iget-object v2, v2, Landroidx/fragment/app/z$a;->b:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-static {v2, p0}, Landroidx/fragment/app/f0;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/f0;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private u1(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->r0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    sget v0, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    sget v0, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getPopDirection()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setPopDirection(Z)V

    :cond_1
    return-void
.end method

.method private w1()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/w;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->a1(Landroidx/fragment/app/w;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x1(Ljava/lang/RuntimeException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/fragment/app/e0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array p0, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v2, p0}, Landroidx/fragment/app/l;->h(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManager;->V(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method private z1()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/u;

    invoke-virtual {p0, v2}, Landroidx/activity/u;->j(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/u;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->n0()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->M0(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/u;->j(Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method A()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method public A0()Li0/c$c;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->Q:Li0/c$c;

    return-object p0
.end method

.method B(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    invoke-virtual {p0, v5}, Landroidx/fragment/app/FragmentManager;->L0(Landroidx/fragment/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    return v4
.end method

.method C()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->W()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->r()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v1, v0, Lr/d;

    if-eqz v1, :cond_0

    check-cast v0, Lr/d;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->q:Lc0/a;

    invoke-interface {v0, v1}, Lr/d;->removeOnTrimMemoryListener(Lc0/a;)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v1, v0, Lr/c;

    if-eqz v1, :cond_1

    check-cast v0, Lr/c;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->p:Lc0/a;

    invoke-interface {v0, v1}, Lr/c;->removeOnConfigurationChangedListener(Lc0/a;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v1, v0, Landroidx/core/app/l;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/core/app/l;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->r:Lc0/a;

    invoke-interface {v0, v1}, Landroidx/core/app/l;->removeOnMultiWindowModeChangedListener(Lc0/a;)V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v1, v0, Landroidx/core/app/m;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/core/app/m;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->s:Lc0/a;

    invoke-interface {v0, v1}, Landroidx/core/app/m;->removeOnPictureInPictureModeChangedListener(Lc0/a;)V

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v1, v0, Landroidx/core/view/n;

    if-eqz v1, :cond_4

    check-cast v0, Landroidx/core/view/n;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/core/view/t;

    invoke-interface {v0, v1}, Landroidx/core/view/n;->removeMenuProvider(Landroidx/core/view/t;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/i;

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/v;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/u;

    invoke-virtual {v1}, Landroidx/activity/u;->h()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/v;

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/b;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/activity/result/b;->c()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->E:Landroidx/activity/result/b;

    invoke-virtual {v0}, Landroidx/activity/result/b;->c()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->F:Landroidx/activity/result/b;

    invoke-virtual {p0}, Landroidx/activity/result/b;->c()V

    :cond_6
    return-void
.end method

.method C0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w0;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->m(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/w0;

    move-result-object p0

    return-object p0
.end method

.method D()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method D0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/u;

    invoke-virtual {v0}, Landroidx/activity/u;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->c1()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/v;

    invoke-virtual {p0}, Landroidx/activity/v;->k()V

    :goto_0
    return-void
.end method

.method E(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v0, v0, Lr/d;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    if-eqz p1, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->E(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method E0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->u1(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method F(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v0, v0, Landroidx/core/app/l;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    if-eqz p2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->F(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method F0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    :cond_0
    return-void
.end method

.method G(Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/v;

    invoke-interface {v1, p0, p1}, Landroidx/fragment/app/v;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G0()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    return p0
.end method

.method H()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->l()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->H()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method I(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method J(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method K0(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p0

    return p0
.end method

.method L()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method L0(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result p0

    return p0
.end method

.method M(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v0, v0, Landroidx/core/app/m;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    if-eqz p2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->M(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method M0(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->y0()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->M0(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method N(Landroid/view/Menu;)Z
    .locals 5

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentManager;->L0(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method N0(I)Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method O()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->z1()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public O0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method P()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method Q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method S()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method T()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method U0(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->F:Landroidx/activity/result/b;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->G:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->F:Landroidx/activity/result/b;

    invoke-virtual {p0, p2}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/l;->k(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public V(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/fragment/app/y;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->z(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge p4, v0, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$l;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/i;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/FragmentManager;->u:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    if-eqz p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method V0(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/b;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {v0, p1, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->G:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    const-string p1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/b;

    invoke-virtual {p0, p2}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/l;->m(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method W0(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v8, p8

    iget-object v2, v0, Landroidx/fragment/app/FragmentManager;->E:Landroidx/activity/result/b;

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v8, :cond_2

    if-nez p4, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityOptions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " were added to fillInIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    new-instance v5, Landroidx/activity/result/IntentSenderRequest$a;

    move-object v6, p2

    invoke-direct {v5, p2}, Landroidx/activity/result/IntentSenderRequest$a;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {v5, v4}, Landroidx/activity/result/IntentSenderRequest$a;->b(Landroid/content/Intent;)Landroidx/activity/result/IntentSenderRequest$a;

    move-result-object v4

    move v5, p5

    move/from16 v7, p6

    invoke-virtual {v4, v7, p5}, Landroidx/activity/result/IntentSenderRequest$a;->c(II)Landroidx/activity/result/IntentSenderRequest$a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/activity/result/IntentSenderRequest$a;->a()Landroidx/activity/result/IntentSenderRequest;

    move-result-object v4

    new-instance v5, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    move v9, p3

    invoke-direct {v5, v6, p3}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Ljava/lang/String;I)V

    iget-object v6, v0, Landroidx/fragment/app/FragmentManager;->G:Ljava/util/ArrayDeque;

    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "is launching an IntentSender for result "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->E:Landroidx/activity/result/b;

    invoke-virtual {v0, v4}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move-object v6, p2

    move v9, p3

    move v5, p5

    move/from16 v7, p6

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/l;->n(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method X(Landroidx/fragment/app/FragmentManager$l;Z)V
    .locals 2

    if-nez p2, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager has not been attached to a host."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->p()V

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q1()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method X0(IZ)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/FragmentManager;->u:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/fragment/app/FragmentManager;->u:I

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p1}, Landroidx/fragment/app/y;->t()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->w1()V

    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-eqz p1, :cond_3

    iget p2, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/l;->o()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    :cond_3
    return-void
.end method

.method Y0()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method Z(Z)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->Y(Z)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->j1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q()V

    throw p1

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->z1()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->U()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->b()V

    return p1
.end method

.method Z0(Landroidx/fragment/app/FragmentContainerView;)V
    .locals 4

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->k()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    iput-object p1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method a0(Landroidx/fragment/app/FragmentManager$l;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManager;->Y(Z)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/FragmentManager$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->M:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->N:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManager;->j1(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->q()V

    throw p1

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->z1()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->U()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->b()V

    return-void
.end method

.method a1(Landroidx/fragment/app/w;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->L:Z

    return-void

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    invoke-virtual {p1}, Landroidx/fragment/app/w;->m()V

    :cond_1
    return-void
.end method

.method b1(IIZ)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Landroidx/fragment/app/FragmentManager$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$m;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, p3}, Landroidx/fragment/app/FragmentManager;->X(Landroidx/fragment/app/FragmentManager$l;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c1()Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentManager;->e1(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public d0()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    move-result v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    return v0
.end method

.method public d1(II)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/FragmentManager;->e1(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method e0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/y;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method f1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p5, v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move p5, v0

    goto :goto_0

    :cond_0
    move p5, v1

    :goto_0
    invoke-direct {p0, p3, p4, p5}, Landroidx/fragment/app/FragmentManager;->f0(Ljava/lang/String;IZ)I

    move-result p3

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v0

    :goto_1
    if-lt p4, p3, :cond_2

    iget-object p5, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method g(Landroidx/fragment/app/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g0(I)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/y;->g(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public g1(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object p0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    .locals 3

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Li0/c;->f(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v0

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/y;->r(Landroidx/fragment/app/w;)V

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/y;->a(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    :cond_3
    return-object v0
.end method

.method public h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/y;->h(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public h1(Landroidx/fragment/app/FragmentManager$k;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/n;->o(Landroidx/fragment/app/FragmentManager$k;Z)V

    return-void
.end method

.method public i(Landroidx/fragment/app/v;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method i0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/y;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method i1(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->u(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->u1(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method j(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->e(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method k()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    return p0
.end method

.method k1(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/u;->o(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method l(Landroidx/fragment/app/l;Landroidx/fragment/app/i;Landroidx/fragment/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-nez v0, :cond_f

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/i;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    new-instance p2, Landroidx/fragment/app/FragmentManager$g;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/FragmentManager$g;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/v;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/v;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/v;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->i(Landroidx/fragment/app/v;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->z1()V

    :cond_2
    instance-of p2, p1, Landroidx/activity/x;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Landroidx/activity/x;

    invoke-interface {p2}, Landroidx/activity/x;->getOnBackPressedDispatcher()Landroidx/activity/v;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->g:Landroidx/activity/v;

    if-eqz p3, :cond_3

    move-object p2, p3

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->h:Landroidx/activity/u;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/v;->h(Landroidx/lifecycle/s;Landroidx/activity/u;)V

    :cond_4
    if-eqz p3, :cond_5

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p1, p3}, Landroidx/fragment/app/FragmentManager;->o0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    goto :goto_1

    :cond_5
    instance-of p2, p1, Landroidx/lifecycle/x0;

    if-eqz p2, :cond_6

    check-cast p1, Landroidx/lifecycle/x0;

    invoke-interface {p1}, Landroidx/lifecycle/x0;->getViewModelStore()Landroidx/lifecycle/w0;

    move-result-object p1

    invoke-static {p1}, Landroidx/fragment/app/u;->k(Landroidx/lifecycle/w0;)Landroidx/fragment/app/u;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    goto :goto_1

    :cond_6
    new-instance p1, Landroidx/fragment/app/u;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/u;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->O0()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/u;->p(Z)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/y;->A(Landroidx/fragment/app/u;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Lq0/h;

    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    check-cast p1, Lq0/h;

    invoke-interface {p1}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object p1

    new-instance p2, Landroidx/fragment/app/s;

    invoke-direct {p2, p0}, Landroidx/fragment/app/s;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0, p2}, Lq0/e;->c(Ljava/lang/String;Lq0/e$b;)V

    invoke-virtual {p1, v0}, Lq0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->m1(Landroid/os/Parcelable;)V

    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Landroidx/activity/result/e;

    if-eqz p2, :cond_9

    check-cast p1, Landroidx/activity/result/e;

    invoke-interface {p1}, Landroidx/activity/result/e;->getActivityResultRegistry()Landroidx/activity/result/d;

    move-result-object p1

    if-eqz p3, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    const-string p2, ""

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StartActivityForResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ld/d;

    invoke-direct {v1}, Ld/d;-><init>()V

    new-instance v2, Landroidx/fragment/app/FragmentManager$h;

    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$h;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/d;->m(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->D:Landroidx/activity/result/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StartIntentSenderForResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/FragmentManager$j;

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManager$j;-><init>()V

    new-instance v2, Landroidx/fragment/app/FragmentManager$i;

    invoke-direct {v2, p0}, Landroidx/fragment/app/FragmentManager$i;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/activity/result/d;->m(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->E:Landroidx/activity/result/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RequestPermissions"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    new-instance v1, Landroidx/fragment/app/FragmentManager$a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentManager$a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/activity/result/d;->m(Ljava/lang/String;Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->F:Landroidx/activity/result/b;

    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Lr/c;

    if-eqz p2, :cond_a

    check-cast p1, Lr/c;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->p:Lc0/a;

    invoke-interface {p1, p2}, Lr/c;->addOnConfigurationChangedListener(Lc0/a;)V

    :cond_a
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Lr/d;

    if-eqz p2, :cond_b

    check-cast p1, Lr/d;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->q:Lc0/a;

    invoke-interface {p1, p2}, Lr/d;->addOnTrimMemoryListener(Lc0/a;)V

    :cond_b
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Landroidx/core/app/l;

    if-eqz p2, :cond_c

    check-cast p1, Landroidx/core/app/l;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->r:Lc0/a;

    invoke-interface {p1, p2}, Landroidx/core/app/l;->addOnMultiWindowModeChangedListener(Lc0/a;)V

    :cond_c
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Landroidx/core/app/m;

    if-eqz p2, :cond_d

    check-cast p1, Landroidx/core/app/m;

    iget-object p2, p0, Landroidx/fragment/app/FragmentManager;->s:Lc0/a;

    invoke-interface {p1, p2}, Landroidx/core/app/m;->addOnPictureInPictureModeChangedListener(Lc0/a;)V

    :cond_d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of p2, p1, Landroidx/core/view/n;

    if-eqz p2, :cond_e

    if-nez p3, :cond_e

    check-cast p1, Landroidx/core/view/n;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->t:Landroidx/core/view/t;

    invoke-interface {p1, p0}, Landroidx/core/view/n;->addMenuProvider(Landroidx/core/view/t;)V

    :cond_e
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method m(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/y;->a(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    :cond_2
    return-void
.end method

.method m1(Landroid/os/Parcelable;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "result_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v3}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "state"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "fragment_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v4}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentState;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/y;->x(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->v()V

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "): "

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "FragmentManager"

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v6, v1, v3}, Landroidx/fragment/app/y;->B(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    iget-object v3, v12, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/u;->i(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSaveState: re-attaching retained "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v3, Landroidx/fragment/app/w;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-direct {v3, v6, v7, v1, v12}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V

    goto :goto_3

    :cond_8
    new-instance v3, Landroidx/fragment/app/w;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    iget-object v9, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->s0()Landroidx/fragment/app/k;

    move-result-object v11

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Ljava/lang/ClassLoader;Landroidx/fragment/app/k;Landroidx/fragment/app/FragmentState;)V

    :goto_3
    invoke-virtual {v3}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSaveState: active ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/fragment/app/w;->o(Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/y;->r(Landroidx/fragment/app/w;)V

    iget v1, p0, Landroidx/fragment/app/FragmentManager;->u:I

    invoke-virtual {v3, v1}, Landroidx/fragment/app/w;->u(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v0}, Landroidx/fragment/app/u;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    iget-object v7, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/fragment/app/y;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding retained Fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " that was not found in the set of active Fragments "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v6, v1}, Landroidx/fragment/app/u;->o(Landroidx/fragment/app/Fragment;)V

    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v6, Landroidx/fragment/app/w;

    iget-object v7, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-direct {v6, v7, v8, v1}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Landroidx/fragment/app/Fragment;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/fragment/app/w;->u(I)V

    invoke-virtual {v6}, Landroidx/fragment/app/w;->m()V

    iput-boolean v7, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {v6}, Landroidx/fragment/app/w;->m()V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->w(Ljava/util/List;)V

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    move v0, v1

    :goto_5
    iget-object v3, p1, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    array-length v6, v3

    if-ge v0, v6, :cond_10

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Landroidx/fragment/app/BackStackRecordState;->b(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object v3

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroidx/fragment/app/a;->v:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroidx/fragment/app/e0;

    invoke-direct {v6, v5}, Landroidx/fragment/app/e0;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v6, "  "

    invoke-virtual {v3, v6, v7, v1}, Landroidx/fragment/app/a;->A(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    :cond_e
    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    iput-object v3, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    :cond_10
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Landroidx/fragment/app/FragmentManagerState;->f:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/Fragment;)V

    :cond_11
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/BackStackState;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object p1, p1, Landroidx/fragment/app/FragmentManagerState;->k:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->G:Ljava/util/ArrayDeque;

    return-void
.end method

.method public n()Landroidx/fragment/app/z;
    .locals 1

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public n0()I
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method o()Z
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/y;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Landroidx/fragment/app/FragmentManager;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method o1()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->l0()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->W()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->Z(Z)Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/u;->p(Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/y;->y()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v2}, Landroidx/fragment/app/y;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "saveAllState: no fragments!"

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v3}, Landroidx/fragment/app/y;->z()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    new-array v7, v6, [Landroidx/fragment/app/BackStackRecordState;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_3

    new-instance v9, Landroidx/fragment/app/BackStackRecordState;

    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/a;

    invoke-direct {v9, v10}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroidx/fragment/app/a;)V

    aput-object v9, v7, v8

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding back stack #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :cond_3
    new-instance v4, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v4}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->a:Ljava/util/ArrayList;

    iput-object v3, v4, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    iput-object v7, v4, Landroidx/fragment/app/FragmentManagerState;->c:[Landroidx/fragment/app/BackStackRecordState;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v4, Landroidx/fragment/app/FragmentManagerState;->f:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->h:Ljava/lang/String;

    :cond_4
    iget-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->j:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->G:Ljava/util/ArrayDeque;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v4, Landroidx/fragment/app/FragmentManagerState;->k:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentState;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method p0()Landroidx/fragment/app/i;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->w:Landroidx/fragment/app/i;

    return-object p0
.end method

.method public p1(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->n(Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/w;->k()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently in the FragmentManager"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/w;->r()Landroidx/fragment/app/Fragment$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public q0(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->e0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_1
    return-object v0
.end method

.method q1()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->g()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->R:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->g()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->R:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;->z1()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method r1(Landroidx/fragment/app/Fragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->r0(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Landroidx/fragment/app/FragmentContainerView;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public s0()Landroidx/fragment/app/k;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->z:Landroidx/fragment/app/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->s0()Landroidx/fragment/app/k;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->A:Landroidx/fragment/app/k;

    return-object p0
.end method

.method s1(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/l$b;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/l;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/l$b;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public t0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method t1(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->e0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/l;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->K(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/y;->n(Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/w;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/n;Landroidx/fragment/app/y;Landroidx/fragment/app/Fragment;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    invoke-virtual {p1}, Landroidx/fragment/app/l;->f()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->o(Ljava/lang/ClassLoader;)V

    iget p0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    invoke-virtual {v0, p0}, Landroidx/fragment/app/w;->u(I)V

    return-object v0
.end method

.method public u0()Landroidx/fragment/app/l;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    return-object p0
.end method

.method v(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/y;->u(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->I0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->H:Z

    :cond_2
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager;->u1(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void
.end method

.method v0()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->f:Landroidx/fragment/app/m;

    return-object p0
.end method

.method v1(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->H0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method w()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method w0()Landroidx/fragment/app/n;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    return-object p0
.end method

.method x()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->I:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->J:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->P:Landroidx/fragment/app/u;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/u;->p(Z)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->R(I)V

    return-void
.end method

.method x0()Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method y(Landroid/content/res/Configuration;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->v:Landroidx/fragment/app/l;

    instance-of v0, v0, Lr/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManager;->x1(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManager;->y(Landroid/content/res/Configuration;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public y0()Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->y:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public y1(Landroidx/fragment/app/FragmentManager$k;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/n;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/n;->p(Landroidx/fragment/app/FragmentManager$k;)V

    return-void
.end method

.method z(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Landroidx/fragment/app/FragmentManager;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->c:Landroidx/fragment/app/y;

    invoke-virtual {p0}, Landroidx/fragment/app/y;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method z0()Landroidx/fragment/app/g0;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->B:Landroidx/fragment/app/g0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->x:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/g0;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->C:Landroidx/fragment/app/g0;

    return-object p0
.end method
