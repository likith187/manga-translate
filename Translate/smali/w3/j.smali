.class public Lw3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lw3/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw3/z;

    invoke-direct {v0}, Lw3/z;-><init>()V

    iput-object v0, p0, Lw3/j;->a:Lw3/z;

    return-void
.end method

.method public constructor <init>(Lw3/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw3/z;

    invoke-direct {v0}, Lw3/z;-><init>()V

    iput-object v0, p0, Lw3/j;->a:Lw3/z;

    new-instance v0, Lw3/w;

    invoke-direct {v0, p0}, Lw3/w;-><init>(Lw3/j;)V

    invoke-virtual {p1, v0}, Lw3/a;->b(Lw3/g;)Lw3/a;

    return-void
.end method

.method static bridge synthetic f(Lw3/j;)Lw3/z;
    .locals 0

    iget-object p0, p0, Lw3/j;->a:Lw3/z;

    return-object p0
.end method


# virtual methods
.method public a()Lw3/i;
    .locals 0

    iget-object p0, p0, Lw3/j;->a:Lw3/z;

    return-object p0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lw3/j;->a:Lw3/z;

    invoke-virtual {p0, p1}, Lw3/z;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lw3/j;->a:Lw3/z;

    invoke-virtual {p0, p1}, Lw3/z;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lw3/j;->a:Lw3/z;

    invoke-virtual {p0, p1}, Lw3/z;->o(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lw3/j;->a:Lw3/z;

    invoke-virtual {p0, p1}, Lw3/z;->p(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
