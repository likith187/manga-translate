.class Lj8/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:D

.field public d:D

.field public e:D

.field public f:I

.field public g:I

.field public h:I

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:I

.field public n:I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj8/c1;->a:I

    const/16 v0, 0x8

    iput v0, p0, Lj8/c1;->b:I

    const-wide v1, 0x3fd3333333333333L    # 0.3

    iput-wide v1, p0, Lj8/c1;->c:D

    const-wide v1, 0x4072c00000000000L    # 300.0

    iput-wide v1, p0, Lj8/c1;->d:D

    iput-wide v1, p0, Lj8/c1;->e:D

    const/4 v1, 0x4

    iput v1, p0, Lj8/c1;->f:I

    iput v0, p0, Lj8/c1;->g:I

    const/16 v0, 0x12c

    iput v0, p0, Lj8/c1;->h:I

    const-wide v0, 0x3fe999999999999aL    # 0.8

    iput-wide v0, p0, Lj8/c1;->i:D

    iput-wide v0, p0, Lj8/c1;->j:D

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    iput-wide v0, p0, Lj8/c1;->k:D

    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, Lj8/c1;->l:D

    const/16 v0, 0x12

    iput v0, p0, Lj8/c1;->m:I

    const/4 v0, 0x3

    iput v0, p0, Lj8/c1;->n:I

    return-void
.end method
