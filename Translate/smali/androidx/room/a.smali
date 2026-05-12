.class public Landroidx/room/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls0/c$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/room/h$c;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Landroidx/room/h$b;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field private final m:Ljava/util/Set;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ls0/c$c;Landroidx/room/h$c;Ljava/util/List;ZLandroidx/room/h$b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/room/a;->a:Ls0/c$c;

    iput-object p1, p0, Landroidx/room/a;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/a;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/a;->d:Landroidx/room/h$c;

    iput-object p5, p0, Landroidx/room/a;->e:Ljava/util/List;

    iput-boolean p6, p0, Landroidx/room/a;->f:Z

    iput-object p7, p0, Landroidx/room/a;->g:Landroidx/room/h$b;

    iput-object p8, p0, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    iput-boolean p10, p0, Landroidx/room/a;->j:Z

    iput-boolean p11, p0, Landroidx/room/a;->k:Z

    iput-boolean p12, p0, Landroidx/room/a;->l:Z

    iput-object p13, p0, Landroidx/room/a;->m:Ljava/util/Set;

    iput-object p14, p0, Landroidx/room/a;->n:Ljava/lang/String;

    iput-object p15, p0, Landroidx/room/a;->o:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    iget-boolean p2, p0, Landroidx/room/a;->l:Z

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-boolean p2, p0, Landroidx/room/a;->k:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroidx/room/a;->m:Ljava/util/Set;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
