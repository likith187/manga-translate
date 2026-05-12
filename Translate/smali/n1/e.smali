.class public Ln1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Ln1/g;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lm1/c;

.field private final d:Lm1/d;

.field private final e:Lm1/f;

.field private final f:Lm1/f;

.field private final g:Ljava/lang/String;

.field private final h:Lm1/b;

.field private final i:Lm1/b;

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln1/g;Landroid/graphics/Path$FillType;Lm1/c;Lm1/d;Lm1/f;Lm1/f;Lm1/b;Lm1/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln1/e;->a:Ln1/g;

    iput-object p3, p0, Ln1/e;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Ln1/e;->c:Lm1/c;

    iput-object p5, p0, Ln1/e;->d:Lm1/d;

    iput-object p6, p0, Ln1/e;->e:Lm1/f;

    iput-object p7, p0, Ln1/e;->f:Lm1/f;

    iput-object p1, p0, Ln1/e;->g:Ljava/lang/String;

    iput-object p8, p0, Ln1/e;->h:Lm1/b;

    iput-object p9, p0, Ln1/e;->i:Lm1/b;

    iput-boolean p10, p0, Ln1/e;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 1

    new-instance v0, Li1/h;

    invoke-direct {v0, p1, p2, p3, p0}, Li1/h;-><init>(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;Ln1/e;)V

    return-object v0
.end method

.method public b()Lm1/f;
    .locals 0

    iget-object p0, p0, Ln1/e;->f:Lm1/f;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Ln1/e;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Lm1/c;
    .locals 0

    iget-object p0, p0, Ln1/e;->c:Lm1/c;

    return-object p0
.end method

.method public e()Ln1/g;
    .locals 0

    iget-object p0, p0, Ln1/e;->a:Ln1/g;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln1/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lm1/d;
    .locals 0

    iget-object p0, p0, Ln1/e;->d:Lm1/d;

    return-object p0
.end method

.method public h()Lm1/f;
    .locals 0

    iget-object p0, p0, Ln1/e;->e:Lm1/f;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Ln1/e;->j:Z

    return p0
.end method
