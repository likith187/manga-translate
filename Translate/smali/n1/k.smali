.class public Ln1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/k$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln1/k$a;

.field private final c:Lm1/b;

.field private final d:Lm1/m;

.field private final e:Lm1/b;

.field private final f:Lm1/b;

.field private final g:Lm1/b;

.field private final h:Lm1/b;

.field private final i:Lm1/b;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln1/k$a;Lm1/b;Lm1/m;Lm1/b;Lm1/b;Lm1/b;Lm1/b;Lm1/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/k;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/k;->b:Ln1/k$a;

    iput-object p3, p0, Ln1/k;->c:Lm1/b;

    iput-object p4, p0, Ln1/k;->d:Lm1/m;

    iput-object p5, p0, Ln1/k;->e:Lm1/b;

    iput-object p6, p0, Ln1/k;->f:Lm1/b;

    iput-object p7, p0, Ln1/k;->g:Lm1/b;

    iput-object p8, p0, Ln1/k;->h:Lm1/b;

    iput-object p9, p0, Ln1/k;->i:Lm1/b;

    iput-boolean p10, p0, Ln1/k;->j:Z

    iput-boolean p11, p0, Ln1/k;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/n;

    invoke-direct {p2, p1, p3, p0}, Li1/n;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/k;)V

    return-object p2
.end method

.method public b()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/k;->f:Lm1/b;

    return-object p0
.end method

.method public c()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/k;->h:Lm1/b;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/k;->g:Lm1/b;

    return-object p0
.end method

.method public f()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/k;->i:Lm1/b;

    return-object p0
.end method

.method public g()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/k;->c:Lm1/b;

    return-object p0
.end method

.method public h()Lm1/m;
    .locals 0

    iget-object p0, p0, Ln1/k;->d:Lm1/m;

    return-object p0
.end method

.method public i()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/k;->e:Lm1/b;

    return-object p0
.end method

.method public j()Ln1/k$a;
    .locals 0

    iget-object p0, p0, Ln1/k;->b:Ln1/k$a;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Ln1/k;->j:Z

    return p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Ln1/k;->k:Z

    return p0
.end method
