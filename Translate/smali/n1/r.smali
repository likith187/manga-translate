.class public Ln1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lm1/h;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILm1/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/r;->a:Ljava/lang/String;

    iput p2, p0, Ln1/r;->b:I

    iput-object p3, p0, Ln1/r;->c:Lm1/h;

    iput-boolean p4, p0, Ln1/r;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/r;

    invoke-direct {p2, p1, p3, p0}, Li1/r;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/r;)V

    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/r;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lm1/h;
    .locals 0

    iget-object p0, p0, Ln1/r;->c:Lm1/h;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Ln1/r;->d:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln1/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ln1/r;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
