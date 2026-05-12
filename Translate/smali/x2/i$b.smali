.class final Lx2/i$b;
.super Lx2/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lx2/o$c;

.field private b:Lx2/o$b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx2/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lx2/o;
    .locals 3

    new-instance v0, Lx2/i;

    iget-object v1, p0, Lx2/i$b;->a:Lx2/o$c;

    iget-object p0, p0, Lx2/i$b;->b:Lx2/o$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lx2/i;-><init>(Lx2/o$c;Lx2/o$b;Lx2/i$a;)V

    return-object v0
.end method

.method public b(Lx2/o$b;)Lx2/o$a;
    .locals 0

    iput-object p1, p0, Lx2/i$b;->b:Lx2/o$b;

    return-object p0
.end method

.method public c(Lx2/o$c;)Lx2/o$a;
    .locals 0

    iput-object p1, p0, Lx2/i$b;->a:Lx2/o$c;

    return-object p0
.end method
