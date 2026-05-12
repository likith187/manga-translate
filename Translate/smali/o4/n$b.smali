.class Lo4/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lo4/c;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;


# direct methods
.method constructor <init>(Lo4/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo4/n$b;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo4/n$b;->c:Ljava/util/Set;

    iput-object p1, p0, Lo4/n$b;->a:Lo4/c;

    return-void
.end method


# virtual methods
.method a(Lo4/n$b;)V
    .locals 0

    iget-object p0, p0, Lo4/n$b;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lo4/n$b;)V
    .locals 0

    iget-object p0, p0, Lo4/n$b;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c()Lo4/c;
    .locals 0

    iget-object p0, p0, Lo4/n$b;->a:Lo4/c;

    return-object p0
.end method

.method d()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo4/n$b;->b:Ljava/util/Set;

    return-object p0
.end method

.method e()Z
    .locals 0

    iget-object p0, p0, Lo4/n$b;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method f()Z
    .locals 0

    iget-object p0, p0, Lo4/n$b;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method g(Lo4/n$b;)V
    .locals 0

    iget-object p0, p0, Lo4/n$b;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
