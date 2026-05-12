.class public final Lf8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;

.field private i:I

.field private final j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lf8/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf8/c;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf8/c;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lf8/c;->i:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lf8/c;->g:I

    return p0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lf8/c;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lf8/c;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf8/c;->a:Ljava/lang/String;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lf8/c;->b:I

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lf8/c;->i:I

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lf8/c;->e:I

    return-void
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lf8/c;->g:I

    return-void
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lf8/c;->d:I

    return-void
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lf8/c;->f:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lf8/c;->c:I

    return-void
.end method
