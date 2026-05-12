.class public Ln1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/t$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln1/t$a;

.field private final c:Lm1/b;

.field private final d:Lm1/b;

.field private final e:Lm1/b;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln1/t$a;Lm1/b;Lm1/b;Lm1/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/t;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/t;->b:Ln1/t$a;

    iput-object p3, p0, Ln1/t;->c:Lm1/b;

    iput-object p4, p0, Ln1/t;->d:Lm1/b;

    iput-object p5, p0, Ln1/t;->e:Lm1/b;

    iput-boolean p6, p0, Ln1/t;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p1, Li1/u;

    invoke-direct {p1, p3, p0}, Li1/u;-><init>(Lo1/b;Ln1/t;)V

    return-object p1
.end method

.method public b()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/t;->d:Lm1/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/t;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/t;->e:Lm1/b;

    return-object p0
.end method

.method public e()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/t;->c:Lm1/b;

    return-object p0
.end method

.method public f()Ln1/t$a;
    .locals 0

    iget-object p0, p0, Ln1/t;->b:Ln1/t$a;

    return-object p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Ln1/t;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/t;->c:Lm1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/t;->d:Lm1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln1/t;->e:Lm1/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
