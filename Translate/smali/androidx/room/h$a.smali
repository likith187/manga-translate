.class public Landroidx/room/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Ls0/c$c;

.field private h:Z

.field private i:Landroidx/room/h$b;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Landroidx/room/h$c;

.field private n:Ljava/util/Set;

.field private o:Ljava/util/Set;

.field private p:Ljava/lang/String;

.field private q:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/h$a;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/h$a;->a:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/room/h$a;->b:Ljava/lang/String;

    sget-object p1, Landroidx/room/h$b;->AUTOMATIC:Landroidx/room/h$b;

    iput-object p1, p0, Landroidx/room/h$a;->i:Landroidx/room/h$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/room/h$a;->k:Z

    new-instance p1, Landroidx/room/h$c;

    invoke-direct {p1}, Landroidx/room/h$c;-><init>()V

    iput-object p1, p0, Landroidx/room/h$a;->m:Landroidx/room/h$c;

    return-void
.end method


# virtual methods
.method public varargs a([Lo0/a;)Landroidx/room/h$a;
    .locals 5

    iget-object v0, p0, Landroidx/room/h$a;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/h$a;->o:Ljava/util/Set;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Landroidx/room/h$a;->o:Ljava/util/Set;

    iget v4, v2, Lo0/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/room/h$a;->o:Ljava/util/Set;

    iget v2, v2, Lo0/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/room/h$a;->m:Landroidx/room/h$c;

    invoke-virtual {v0, p1}, Landroidx/room/h$c;->b([Lo0/a;)V

    return-object p0
.end method

.method public b()Landroidx/room/h$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/h$a;->h:Z

    return-object p0
.end method

.method public c()Landroidx/room/h;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/h$a;->c:Landroid/content/Context;

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/room/h$a;->a:Ljava/lang/Class;

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroidx/room/h$a;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/h$a;->f:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    invoke-static {}, Lh/c;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/h$a;->f:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/h$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/h$a;->f:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/room/h$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/h$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    iput-object v1, v0, Landroidx/room/h$a;->e:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/h$a;->o:Ljava/util/Set;

    if-eqz v1, :cond_4

    iget-object v2, v0, Landroidx/room/h$a;->n:Ljava/util/Set;

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Landroidx/room/h$a;->n:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, v0, Landroidx/room/h$a;->g:Ls0/c$c;

    if-nez v1, :cond_5

    new-instance v1, Lt0/c;

    invoke-direct {v1}, Lt0/c;-><init>()V

    iput-object v1, v0, Landroidx/room/h$a;->g:Ls0/c$c;

    :cond_5
    iget-object v1, v0, Landroidx/room/h$a;->p:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v2, v0, Landroidx/room/h$a;->q:Ljava/io/File;

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, v0, Landroidx/room/h$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_8

    iget-object v2, v0, Landroidx/room/h$a;->q:Ljava/io/File;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    new-instance v2, Landroidx/room/m;

    iget-object v3, v0, Landroidx/room/h$a;->q:Ljava/io/File;

    iget-object v4, v0, Landroidx/room/h$a;->g:Ls0/c$c;

    invoke-direct {v2, v1, v3, v4}, Landroidx/room/m;-><init>(Ljava/lang/String;Ljava/io/File;Ls0/c$c;)V

    iput-object v2, v0, Landroidx/room/h$a;->g:Ls0/c$c;

    :cond_9
    new-instance v1, Landroidx/room/a;

    iget-object v6, v0, Landroidx/room/h$a;->c:Landroid/content/Context;

    iget-object v7, v0, Landroidx/room/h$a;->b:Ljava/lang/String;

    iget-object v8, v0, Landroidx/room/h$a;->g:Ls0/c$c;

    iget-object v9, v0, Landroidx/room/h$a;->m:Landroidx/room/h$c;

    iget-object v10, v0, Landroidx/room/h$a;->d:Ljava/util/ArrayList;

    iget-boolean v11, v0, Landroidx/room/h$a;->h:Z

    iget-object v2, v0, Landroidx/room/h$a;->i:Landroidx/room/h$b;

    invoke-virtual {v2, v6}, Landroidx/room/h$b;->resolve(Landroid/content/Context;)Landroidx/room/h$b;

    move-result-object v12

    iget-object v13, v0, Landroidx/room/h$a;->e:Ljava/util/concurrent/Executor;

    iget-object v14, v0, Landroidx/room/h$a;->f:Ljava/util/concurrent/Executor;

    iget-boolean v15, v0, Landroidx/room/h$a;->j:Z

    iget-boolean v2, v0, Landroidx/room/h$a;->k:Z

    iget-boolean v3, v0, Landroidx/room/h$a;->l:Z

    iget-object v4, v0, Landroidx/room/h$a;->n:Ljava/util/Set;

    iget-object v5, v0, Landroidx/room/h$a;->p:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v0, Landroidx/room/h$a;->q:Ljava/io/File;

    move-object/from16 v19, v5

    move-object v5, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v20, v4

    invoke-direct/range {v5 .. v20}, Landroidx/room/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ls0/c$c;Landroidx/room/h$c;Ljava/util/List;ZLandroidx/room/h$b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    iget-object v0, v0, Landroidx/room/h$a;->a:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v0, v2}, Landroidx/room/g;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/h;

    invoke-virtual {v0, v1}, Landroidx/room/h;->l(Landroidx/room/a;)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create from asset or file for an in-memory database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
