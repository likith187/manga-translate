.class public Lt5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:[B

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/c;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lt5/c;->c:Z

    iput p3, p0, Lt5/c;->d:I

    iput-object p4, p0, Lt5/c;->e:Ljava/lang/String;

    iput-object p5, p0, Lt5/c;->f:Ljava/lang/String;

    iput-wide p6, p0, Lt5/c;->g:J

    iput-object p8, p0, Lt5/c;->h:[B

    iput-wide p9, p0, Lt5/c;->i:J

    iput-wide p11, p0, Lt5/c;->j:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt5/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lt5/c;->j:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt5/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lt5/c;->g:J

    return-wide v0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lt5/c;->a:I

    return p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lt5/c;->i:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt5/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public h()[B
    .locals 0

    iget-object p0, p0, Lt5/c;->h:[B

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lt5/c;->d:I

    return p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lt5/c;->c:Z

    return p0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lt5/c;->a:I

    return-void
.end method
