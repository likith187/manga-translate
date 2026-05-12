.class public Ln1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm1/m;

.field private final c:Lm1/m;

.field private final d:Lm1/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm1/m;Lm1/m;Lm1/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/l;->a:Ljava/lang/String;

    iput-object p2, p0, Ln1/l;->b:Lm1/m;

    iput-object p3, p0, Ln1/l;->c:Lm1/m;

    iput-object p4, p0, Ln1/l;->d:Lm1/b;

    iput-boolean p5, p0, Ln1/l;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/o;

    invoke-direct {p2, p1, p3, p0}, Li1/o;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/l;)V

    return-object p2
.end method

.method public b()Lm1/b;
    .locals 0

    iget-object p0, p0, Ln1/l;->d:Lm1/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lm1/m;
    .locals 0

    iget-object p0, p0, Ln1/l;->b:Lm1/m;

    return-object p0
.end method

.method public e()Lm1/m;
    .locals 0

    iget-object p0, p0, Ln1/l;->c:Lm1/m;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Ln1/l;->e:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/l;->b:Lm1/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln1/l;->c:Lm1/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
