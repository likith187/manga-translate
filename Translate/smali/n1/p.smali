.class public Ln1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Lm1/a;

.field private final e:Lm1/d;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lm1/a;Lm1/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/p;->c:Ljava/lang/String;

    iput-boolean p2, p0, Ln1/p;->a:Z

    iput-object p3, p0, Ln1/p;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Ln1/p;->d:Lm1/a;

    iput-object p5, p0, Ln1/p;->e:Lm1/d;

    iput-boolean p6, p0, Ln1/p;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    new-instance p2, Li1/g;

    invoke-direct {p2, p1, p3, p0}, Li1/g;-><init>(Lcom/airbnb/lottie/i0;Lo1/b;Ln1/p;)V

    return-object p2
.end method

.method public b()Lm1/a;
    .locals 0

    iget-object p0, p0, Ln1/p;->d:Lm1/a;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Ln1/p;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/p;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lm1/d;
    .locals 0

    iget-object p0, p0, Ln1/p;->e:Lm1/d;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Ln1/p;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Ln1/p;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
