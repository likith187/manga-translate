.class public abstract Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/c$a;
    }
.end annotation


# static fields
.field protected static final i:[I


# instance fields
.field public a:I

.field public b:I

.field protected c:Lz1/c$a;

.field protected d:S

.field protected e:S

.field protected f:I

.field protected g:I

.field protected h:Lx1/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3e80

    const/16 v1, 0x1f40

    const v2, 0xac44

    const/16 v3, 0x5622

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lz1/c;->i:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz1/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lz1/c;->b:I

    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAudioRecorder"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->STOPPED:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {p0}, Lz1/c;->r()V

    iget-object p0, p0, Lz1/c;->h:Lx1/i0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lx1/i0;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(III)I
    .locals 3

    const/16 v0, 0x8

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    iput-short v1, p0, Lz1/c;->e:S

    goto :goto_0

    :cond_0
    iput-short v0, p0, Lz1/c;->e:S

    :goto_0
    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    iput-short p2, p0, Lz1/c;->d:S

    goto :goto_1

    :cond_1
    iput-short v2, p0, Lz1/c;->d:S

    :goto_1
    iput p1, p0, Lz1/c;->g:I

    mul-int/lit8 p1, p1, 0x28

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lz1/c;->f:I

    mul-int/2addr p1, v2

    iget-short p2, p0, Lz1/c;->e:S

    mul-int/2addr p1, p2

    iget-short p0, p0, Lz1/c;->d:S

    mul-int/2addr p1, p0

    div-int/2addr p1, v0

    return p1
.end method

.method protected b([B)D
    .locals 5

    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const v4, 0x8000

    if-lt v3, v4, :cond_0

    const v4, 0xffff

    sub-int v3, v4, v3

    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    int-to-double p0, p0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public c()I
    .locals 0

    iget-short p0, p0, Lz1/c;->d:S

    return p0
.end method

.method protected abstract d()I
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lz1/c;->g:I

    return p0
.end method

.method protected abstract f(I)V
.end method

.method protected g()Z
    .locals 1

    iget-object p0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v0, Lz1/c$a;->RECORDING:Lz1/c$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lz1/c$a;->PAUSE:Lz1/c$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v1, Lz1/c$a;->RECORDING:Lz1/c$a;

    if-ne v0, v1, :cond_0

    const-string v0, "BaseAudioRecorder"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->PAUSE:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    :cond_0
    return-void
.end method

.method public j()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare() state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAudioRecorder"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v2, Lz1/c$a;->INITIALIZING:Lz1/c$a;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lz1/c;->d()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lz1/c;->f:I

    iget-short v3, p0, Lz1/c;->e:S

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    iget-short v3, p0, Lz1/c;->d:S

    mul-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lz1/c;->f(I)V

    iget v0, p0, Lz1/c;->a:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video call buffer size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz1/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lz1/c$a;->READY:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    goto :goto_0

    :cond_2
    const-string v0, "prepare() method called on uninitialized recorder"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() method called on illegal mState State:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz1/c;->l()V

    sget-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    :goto_0
    return-void
.end method

.method protected abstract k()V
.end method

.method public l()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAudioRecorder"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lz1/c;->h()V

    invoke-virtual {p0}, Lz1/c;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() uncompressed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract m()V
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v1, Lz1/c$a;->PAUSE:Lz1/c$a;

    if-ne v0, v1, :cond_0

    const-string v0, "BaseAudioRecorder"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->RECORDING:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {p0}, Lz1/c;->k()V

    :cond_0
    return-void
.end method

.method public o(Lx1/i0;)V
    .locals 0

    iput-object p1, p0, Lz1/c;->h:Lx1/i0;

    return-void
.end method

.method public p()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAudioRecorder"

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz1/c;->c:Lz1/c$a;

    sget-object v2, Lz1/c$a;->READY:Lz1/c$a;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lz1/c;->h:Lx1/i0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lx1/i0;->c()V

    :cond_0
    invoke-virtual {p0}, Lz1/c;->q()V

    invoke-virtual {p0}, Lz1/c;->k()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() called on illegal mState mState ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz1/c;->c:Lz1/c$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lz1/c$a;->ERROR:Lz1/c$a;

    iput-object v0, p0, Lz1/c;->c:Lz1/c$a;

    :goto_0
    return-void
.end method

.method protected abstract q()V
.end method

.method protected abstract r()V
.end method
