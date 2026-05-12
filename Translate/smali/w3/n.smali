.class final Lw3/n;
.super Lw3/a;
.source "SourceFile"


# instance fields
.field private final a:Lw3/z;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/a;-><init>()V

    new-instance v0, Lw3/z;

    invoke-direct {v0}, Lw3/z;-><init>()V

    iput-object v0, p0, Lw3/n;->a:Lw3/z;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lw3/n;->a:Lw3/z;

    invoke-virtual {p0}, Lw3/z;->h()Z

    move-result p0

    return p0
.end method

.method public final b(Lw3/g;)Lw3/a;
    .locals 2

    new-instance v0, Lw3/m;

    invoke-direct {v0, p0, p1}, Lw3/m;-><init>(Lw3/n;Lw3/g;)V

    iget-object p1, p0, Lw3/n;->a:Lw3/z;

    sget-object v1, Lw3/k;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, v0}, Lw3/z;->k(Ljava/util/concurrent/Executor;Lw3/f;)Lw3/i;

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lw3/n;->a:Lw3/z;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw3/z;->p(Ljava/lang/Object;)Z

    return-void
.end method
