.class final Lo4/b0;
.super Lo4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/b0$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Set;

.field private final g:Lo4/d;


# direct methods
.method constructor <init>(Lo4/c;Lo4/d;)V
    .locals 8

    invoke-direct {p0}, Lo4/a;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lo4/c;->c()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo4/o;

    invoke-virtual {v6}, Lo4/o;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lo4/o;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lo4/o;->b()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lo4/o;->b()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lo4/o;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lo4/o;->b()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lo4/o;->f()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lo4/o;->b()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lo4/o;->b()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lo4/c;->f()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lt4/b;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo4/b0;->a:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo4/b0;->b:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo4/b0;->c:Ljava/util/Set;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo4/b0;->d:Ljava/util/Set;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo4/b0;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lo4/c;->f()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo4/b0;->f:Ljava/util/Set;

    iput-object p2, p0, Lo4/b0;->g:Lo4/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo4/b0;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo4/b0;->g:Lo4/d;

    invoke-interface {v0, p1}, Lo4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lt4/b;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lo4/b0$a;

    iget-object p0, p0, Lo4/b0;->f:Ljava/util/Set;

    check-cast v0, Lt4/b;

    invoke-direct {p1, p0, v0}, Lo4/b0$a;-><init>(Ljava/util/Set;Lt4/b;)V

    return-object p1

    :cond_1
    new-instance p0, Lo4/q;

    const-string v0, "Attempting to request an undeclared dependency %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo4/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lo4/b0;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo4/b0;->g:Lo4/d;

    invoke-interface {p0, p1}, Lo4/d;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lo4/q;

    const-string v0, "Attempting to request an undeclared dependency Set<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo4/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/Class;)Lu4/b;
    .locals 1

    iget-object v0, p0, Lo4/b0;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo4/b0;->g:Lo4/d;

    invoke-interface {p0, p1}, Lo4/d;->c(Ljava/lang/Class;)Lu4/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lo4/q;

    const-string v0, "Attempting to request an undeclared dependency Provider<%s>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo4/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Ljava/lang/Class;)Lu4/b;
    .locals 1

    iget-object v0, p0, Lo4/b0;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo4/b0;->g:Lo4/d;

    invoke-interface {p0, p1}, Lo4/d;->d(Ljava/lang/Class;)Lu4/b;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lo4/q;

    const-string v0, "Attempting to request an undeclared dependency Provider<Set<%s>>."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo4/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method
