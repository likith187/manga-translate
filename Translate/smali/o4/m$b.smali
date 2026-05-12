.class public final Lo4/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo4/m$b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo4/m$b;->c:Ljava/util/List;

    iput-object p1, p0, Lo4/m$b;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lo4/c;)Lo4/m$b;
    .locals 1

    iget-object v0, p0, Lo4/m$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lo4/m$b;
    .locals 1

    iget-object v0, p0, Lo4/m$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public c()Lo4/m;
    .locals 4

    new-instance v0, Lo4/m;

    iget-object v1, p0, Lo4/m$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo4/m$b;->b:Ljava/util/List;

    iget-object p0, p0, Lo4/m$b;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lo4/m;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;Ljava/util/Collection;Lo4/m$a;)V

    return-object v0
.end method
