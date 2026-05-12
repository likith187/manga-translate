.class final Lx2/e$b;
.super Lx2/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lx2/k$b;

.field private b:Lx2/a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx2/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lx2/k;
    .locals 3

    new-instance v0, Lx2/e;

    iget-object v1, p0, Lx2/e$b;->a:Lx2/k$b;

    iget-object p0, p0, Lx2/e$b;->b:Lx2/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lx2/e;-><init>(Lx2/k$b;Lx2/a;Lx2/e$a;)V

    return-object v0
.end method

.method public b(Lx2/a;)Lx2/k$a;
    .locals 0

    iput-object p1, p0, Lx2/e$b;->b:Lx2/a;

    return-object p0
.end method

.method public c(Lx2/k$b;)Lx2/k$a;
    .locals 0

    iput-object p1, p0, Lx2/e$b;->a:Lx2/k$b;

    return-object p0
.end method
