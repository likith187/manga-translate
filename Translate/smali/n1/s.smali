.class public Ln1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/s$b;,
        Ln1/s$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm1/b;

.field private final c:Ljava/util/List;

.field private final d:Lm1/a;

.field private final e:Lm1/d;

.field private final f:Lm1/b;

.field private final g:Ln1/s$b;

.field private final h:Ln1/s$c;

.field private final i:F

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm1/b;Ljava/util/List;Lm1/a;Lm1/d;Lm1/b;Ln1/s$b;Ln1/s$c;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/s;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/s;->b:Lm1/b;

    iput-object p3, p0, Ln1/s;->c:Ljava/util/List;

    iput-object p4, p0, Ln1/s;->d:Lm1/a;

    iput-object p5, p0, Ln1/s;->e:Lm1/d;

    iput-object p6, p0, Ln1/s;->f:Lm1/b;

    iput-object p7, p0, Ln1/s;->g:Ln1/s$b;

    iput-object p8, p0, Ln1/s;->h:Ln1/s$c;

    iput p9, p0, Ln1/s;->i:F

    iput-boolean p10, p0, Ln1/s;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/t;

    invoke-direct {p2, p1, p3, p0}, Li1/t;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/s;)V

    return-object p2
.end method

.method public b()Ln1/s$b;
    .locals 0

    iget-object p0, p0, Ln1/s;->g:Ln1/s$b;

    return-object p0
.end method

.method public c()Lm1/a;
    .locals 0

    iget-object p0, p0, Ln1/s;->d:Lm1/a;

    return-object p0
.end method

.method public d()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/s;->b:Lm1/b;

    return-object p0
.end method

.method public e()Ln1/s$c;
    .locals 0

    iget-object p0, p0, Ln1/s;->h:Ln1/s$c;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln1/s;->c:Ljava/util/List;

    return-object p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Ln1/s;->i:F

    return p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method public i()Lm1/d;
    .locals 0

    iget-object p0, p0, Ln1/s;->e:Lm1/d;

    return-object p0
.end method

.method public j()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/s;->f:Lm1/b;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Ln1/s;->j:Z

    return p0
.end method
