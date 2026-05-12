.class public final synthetic Lf5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf5/i;

.field public final synthetic b:Lw3/a;

.field public final synthetic c:Lw3/b;

.field public final synthetic f:Ljava/util/concurrent/Callable;

.field public final synthetic h:Lw3/j;


# direct methods
.method public synthetic constructor <init>(Lf5/i;Lw3/a;Lw3/b;Ljava/util/concurrent/Callable;Lw3/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/w;->a:Lf5/i;

    iput-object p2, p0, Lf5/w;->b:Lw3/a;

    iput-object p3, p0, Lf5/w;->c:Lw3/b;

    iput-object p4, p0, Lf5/w;->f:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lf5/w;->h:Lw3/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lf5/w;->a:Lf5/i;

    iget-object v1, p0, Lf5/w;->b:Lw3/a;

    iget-object v2, p0, Lf5/w;->c:Lw3/b;

    iget-object v3, p0, Lf5/w;->f:Ljava/util/concurrent/Callable;

    iget-object p0, p0, Lf5/w;->h:Lw3/j;

    invoke-virtual {v0, v1, v2, v3, p0}, Lf5/i;->h(Lw3/a;Lw3/b;Ljava/util/concurrent/Callable;Lw3/j;)V

    return-void
.end method
