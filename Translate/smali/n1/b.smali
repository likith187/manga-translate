.class public Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm1/m;

.field private final c:Lm1/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm1/m;Lm1/f;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/b;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/b;->b:Lm1/m;

    iput-object p3, p0, Ln1/b;->c:Lm1/f;

    iput-boolean p4, p0, Ln1/b;->d:Z

    iput-boolean p5, p0, Ln1/b;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/f;

    invoke-direct {p2, p1, p3, p0}, Li1/f;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/b;)V

    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lm1/m;
    .locals 0

    iget-object p0, p0, Ln1/b;->b:Lm1/m;

    return-object p0
.end method

.method public d()Lm1/f;
    .locals 0

    iget-object p0, p0, Ln1/b;->c:Lm1/f;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Ln1/b;->e:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Ln1/b;->d:Z

    return p0
.end method
