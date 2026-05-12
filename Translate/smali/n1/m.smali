.class public Ln1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm1/b;

.field private final c:Lm1/b;

.field private final d:Lm1/l;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm1/b;Lm1/b;Lm1/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/m;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/m;->b:Lm1/b;

    iput-object p3, p0, Ln1/m;->c:Lm1/b;

    iput-object p4, p0, Ln1/m;->d:Lm1/l;

    iput-boolean p5, p0, Ln1/m;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/p;

    invoke-direct {p2, p1, p3, p0}, Li1/p;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/m;)V

    return-object p2
.end method

.method public b()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/m;->b:Lm1/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/m;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/m;->c:Lm1/b;

    return-object p0
.end method

.method public e()Lm1/l;
    .locals 0

    iget-object p0, p0, Ln1/m;->d:Lm1/l;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Ln1/m;->e:Z

    return p0
.end method
