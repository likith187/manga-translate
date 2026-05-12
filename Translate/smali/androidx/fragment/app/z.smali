.class public abstract Landroidx/fragment/app/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/z$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/k;

.field private final b:Ljava/lang/ClassLoader;

.field c:Ljava/util/ArrayList;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:I

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:Ljava/lang/CharSequence;

.field p:Ljava/util/ArrayList;

.field q:Ljava/util/ArrayList;

.field r:Z

.field s:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/k;Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/z;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/z;->r:Z

    iput-object p1, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/k;

    iput-object p2, p0, Landroidx/fragment/app/z;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/fragment/app/z;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/z;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method d(Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;
    .locals 0

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/z;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;

    move-result-object p0

    return-object p0
.end method

.method public e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/z;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method f(Landroidx/fragment/app/z$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/fragment/app/z;->d:I

    iput v0, p1, Landroidx/fragment/app/z$a;->d:I

    iget v0, p0, Landroidx/fragment/app/z;->e:I

    iput v0, p1, Landroidx/fragment/app/z$a;->e:I

    iget v0, p0, Landroidx/fragment/app/z;->f:I

    iput v0, p1, Landroidx/fragment/app/z$a;->f:I

    iget p0, p0, Landroidx/fragment/app/z;->g:I

    iput p0, p1, Landroidx/fragment/app/z$a;->g:I

    return-void
.end method

.method public g(Ljava/lang/String;)Landroidx/fragment/app/z;
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/z;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/z;->i:Z

    iput-object p1, p0, Landroidx/fragment/app/z;->k:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public l()Landroidx/fragment/app/z;
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/z;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/z;->j:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This transaction is already being added to the back stack"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mPreviousWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Li0/c;->f(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_4

    iget-object v2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t change tag of fragment "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_8

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    iget p3, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz p3, :cond_6

    if-ne p3, p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t change container ID of fragment "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iput p1, p2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t add fragment "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    new-instance p1, Landroidx/fragment/app/z$a;

    invoke-direct {p1, p4, p2}, Landroidx/fragment/app/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/z$a;)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    .locals 2

    new-instance v0, Landroidx/fragment/app/z$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/z$a;)V

    return-object p0
.end method

.method public abstract o()Z
.end method

.method public p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    .locals 2

    new-instance v0, Landroidx/fragment/app/z$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/z$a;)V

    return-object p0
.end method

.method public q(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/z;->r(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;

    move-result-object p0

    return-object p0
.end method

.method public r(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/z;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/z;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must use non-zero containerViewId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public s(II)Landroidx/fragment/app/z;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/fragment/app/z;->t(IIII)Landroidx/fragment/app/z;

    move-result-object p0

    return-object p0
.end method

.method public t(IIII)Landroidx/fragment/app/z;
    .locals 0

    iput p1, p0, Landroidx/fragment/app/z;->d:I

    iput p2, p0, Landroidx/fragment/app/z;->e:I

    iput p3, p0, Landroidx/fragment/app/z;->f:I

    iput p4, p0, Landroidx/fragment/app/z;->g:I

    return-object p0
.end method

.method public u(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/l$b;)Landroidx/fragment/app/z;
    .locals 2

    new-instance v0, Landroidx/fragment/app/z$a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Landroidx/fragment/app/z$a;-><init>(ILandroidx/fragment/app/Fragment;Landroidx/lifecycle/l$b;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/z$a;)V

    return-object p0
.end method

.method public v(Z)Landroidx/fragment/app/z;
    .locals 0

    iput-boolean p1, p0, Landroidx/fragment/app/z;->r:Z

    return-object p0
.end method

.method public w(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z;
    .locals 2

    new-instance v0, Landroidx/fragment/app/z$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/z$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->f(Landroidx/fragment/app/z$a;)V

    return-object p0
.end method
