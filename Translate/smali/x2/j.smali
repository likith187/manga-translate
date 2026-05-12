.class public abstract Lx2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lx2/j;
    .locals 1

    new-instance v0, Lx2/d;

    invoke-direct {v0, p0}, Lx2/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Lq4/a;
    .locals 2

    new-instance v0, Ls4/d;

    invoke-direct {v0}, Ls4/d;-><init>()V

    sget-object v1, Lx2/b;->a:Lr4/a;

    invoke-virtual {v0, v1}, Ls4/d;->g(Lr4/a;)Ls4/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ls4/d;->h(Z)Ls4/d;

    move-result-object v0

    invoke-virtual {v0}, Ls4/d;->f()Lq4/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
.end method
