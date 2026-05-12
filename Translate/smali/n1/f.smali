.class public Ln1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln1/g;

.field private final c:Lm1/c;

.field private final d:Lm1/d;

.field private final e:Lm1/f;

.field private final f:Lm1/f;

.field private final g:Lm1/b;

.field private final h:Ln1/s$b;

.field private final i:Ln1/s$c;

.field private final j:F

.field private final k:Ljava/util/List;

.field private final l:Lm1/b;

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln1/g;Lm1/c;Lm1/d;Lm1/f;Lm1/f;Lm1/b;Ln1/s$b;Ln1/s$c;FLjava/util/List;Lm1/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/f;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/f;->b:Ln1/g;

    iput-object p3, p0, Ln1/f;->c:Lm1/c;

    iput-object p4, p0, Ln1/f;->d:Lm1/d;

    iput-object p5, p0, Ln1/f;->e:Lm1/f;

    iput-object p6, p0, Ln1/f;->f:Lm1/f;

    iput-object p7, p0, Ln1/f;->g:Lm1/b;

    iput-object p8, p0, Ln1/f;->h:Ln1/s$b;

    iput-object p9, p0, Ln1/f;->i:Ln1/s$c;

    iput p10, p0, Ln1/f;->j:F

    iput-object p11, p0, Ln1/f;->k:Ljava/util/List;

    iput-object p12, p0, Ln1/f;->l:Lm1/b;

    iput-boolean p13, p0, Ln1/f;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/i;

    invoke-direct {p2, p1, p3, p0}, Li1/i;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/f;)V

    return-object p2
.end method

.method public b()Ln1/s$b;
    .locals 0

    iget-object p0, p0, Ln1/f;->h:Ln1/s$b;

    return-object p0
.end method

.method public c()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/f;->l:Lm1/b;

    return-object p0
.end method

.method public d()Lm1/f;
    .locals 0

    iget-object p0, p0, Ln1/f;->f:Lm1/f;

    return-object p0
.end method

.method public e()Lm1/c;
    .locals 0

    iget-object p0, p0, Ln1/f;->c:Lm1/c;

    return-object p0
.end method

.method public f()Ln1/g;
    .locals 0

    iget-object p0, p0, Ln1/f;->b:Ln1/g;

    return-object p0
.end method

.method public g()Ln1/s$c;
    .locals 0

    iget-object p0, p0, Ln1/f;->i:Ln1/s$c;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln1/f;->k:Ljava/util/List;

    return-object p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Ln1/f;->j:F

    return p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public k()Lm1/d;
    .locals 0

    iget-object p0, p0, Ln1/f;->d:Lm1/d;

    return-object p0
.end method

.method public l()Lm1/f;
    .locals 0

    iget-object p0, p0, Ln1/f;->e:Lm1/f;

    return-object p0
.end method

.method public m()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/f;->g:Lm1/b;

    return-object p0
.end method

.method public n()Z
    .locals 0

    iget-boolean p0, p0, Ln1/f;->m:Z

    return p0
.end method
