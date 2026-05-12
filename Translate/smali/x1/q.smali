.class public final Lx1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/q$a;
    }
.end annotation


# static fields
.field public static final g:Lx1/q$a;


# instance fields
.field private a:[B

.field private b:I

.field private c:Lx1/j0;

.field private d:Lx1/j0;

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/q$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lx1/q;->g:Lx1/q$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lx1/q;->f:I

    return-void
.end method

.method private final a([B)Ln8/v;
    .locals 2

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lx1/q;->g(I)[S

    move-result-object p0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    new-instance p1, Ln8/v;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Ln8/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final c([B)Ln8/v;
    .locals 8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lx1/q;->f(I)[S

    move-result-object v2

    invoke-direct {p0, v1}, Lx1/q;->f(I)[S

    move-result-object p0

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lb9/d;->l(II)Lb9/c;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lb9/d;->k(Lb9/a;I)Lb9/a;

    move-result-object v3

    invoke-virtual {v3}, Lb9/a;->a()I

    move-result v4

    invoke-virtual {v3}, Lb9/a;->c()I

    move-result v5

    invoke-virtual {v3}, Lb9/a;->d()I

    move-result v3

    if-lez v3, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    if-gez v3, :cond_4

    if-gt v5, v4, :cond_4

    :cond_1
    :goto_0
    mul-int/lit8 v6, v4, 0x2

    if-ge v6, v0, :cond_2

    invoke-virtual {p1, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    aput-short v7, v2, v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v0, :cond_3

    invoke-virtual {p1, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    aput-short v6, p0, v4

    :cond_3
    if-eq v4, v5, :cond_4

    add-int/2addr v4, v3

    goto :goto_0

    :cond_4
    new-instance p1, Ln8/v;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v2, p0, v0}, Ln8/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic e(Lx1/q;IIIIIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/16 v0, 0x10

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x2

    :cond_1
    move v6, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lx1/q;->d(IIIII)V

    return-void
.end method

.method private final f(I)[S
    .locals 1

    iget-object v0, p0, Lx1/q;->d:Lx1/j0;

    if-nez v0, :cond_0

    new-instance v0, Lx1/j0;

    invoke-direct {v0, p1}, Lx1/j0;-><init>(I)V

    iput-object v0, p0, Lx1/q;->d:Lx1/j0;

    :cond_0
    iget-object p0, p0, Lx1/q;->d:Lx1/j0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lx1/b;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0

    :cond_1
    new-array p0, p1, [S

    return-object p0
.end method

.method private final g(I)[S
    .locals 1

    iget-object v0, p0, Lx1/q;->c:Lx1/j0;

    if-nez v0, :cond_0

    new-instance v0, Lx1/j0;

    invoke-direct {v0, p1}, Lx1/j0;-><init>(I)V

    iput-object v0, p0, Lx1/q;->c:Lx1/j0;

    :cond_0
    iget-object p0, p0, Lx1/q;->c:Lx1/j0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lx1/b;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    return-object p0

    :cond_1
    new-array p0, p1, [S

    return-object p0
.end method


# virtual methods
.method public final b([BLw8/p;)V
    .locals 6

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lx1/q;->e:Z

    const-string v1, "LameMp3Encoder"

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "encode, but have not inited!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "encode, but data is null!"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v0, p0, Lx1/q;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encode error, no support channel "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lx1/q;->c([B)Ln8/v;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lx1/q;->a([B)Ln8/v;

    move-result-object p1

    :goto_0
    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ln8/v;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    invoke-virtual {p1}, Ln8/v;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    invoke-virtual {p1}, Ln8/v;->getThird()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p0, Lx1/q;->a:[B

    invoke-static {v0, v2, v4, v5}, Lcom/supets/pet/nativelib/MP3Recorder;->encodeEx([S[SI[B)I

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_4
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lx1/q;->b:I

    if-lez v0, :cond_5

    iget-object v2, p0, Lx1/q;->a:[B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lw8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodedSize error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object p2, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_4
    invoke-static {p2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encode error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :try_start_1
    iget-object p2, p0, Lx1/q;->c:Lx1/j0;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ln8/v;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Lx1/b;->e(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_5
    iget-object p0, p0, Lx1/q;->d:Lx1/j0;

    if-eqz p0, :cond_9

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ln8/v;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [S

    if-eqz p2, :cond_8

    invoke-virtual {p0, p2}, Lx1/b;->e(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ln8/v;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lx1/b;->e(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_9
    invoke-static {v3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :goto_6
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encode release error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final d(IIIII)V
    .locals 6

    iput p3, p0, Lx1/q;->f:I

    const/16 v0, 0x1c20

    int-to-float v0, v0

    int-to-float p1, p1

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lx1/q;->a:[B

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    const/4 v3, 0x1

    move v0, p2

    move v1, p3

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/supets/pet/nativelib/MP3Recorder;->initEx(IIIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx1/q;->e:Z

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LameMp3Encoder"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "release"

    const-string v2, "LameMp3Encoder"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx1/q;->e:Z

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {}, Lcom/supets/pet/nativelib/MP3Recorder;->closeEx()V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lx1/q;->d:Lx1/j0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx1/b;->a()V

    :cond_1
    iget-object p0, p0, Lx1/q;->c:Lx1/j0;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lx1/b;->a()V

    :cond_2
    return-void
.end method
