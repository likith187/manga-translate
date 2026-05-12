.class public final Lokhttp3/a0$a$a;
.super Lokhttp3/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/a0$a;->a([BLokhttp3/w;II)Lokhttp3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/w;

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:I


# direct methods
.method constructor <init>(Lokhttp3/w;I[BI)V
    .locals 0

    iput-object p1, p0, Lokhttp3/a0$a$a;->b:Lokhttp3/w;

    iput p2, p0, Lokhttp3/a0$a$a;->c:I

    iput-object p3, p0, Lokhttp3/a0$a$a;->d:[B

    iput p4, p0, Lokhttp3/a0$a$a;->e:I

    invoke-direct {p0}, Lokhttp3/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget p0, p0, Lokhttp3/a0$a$a;->c:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public b()Lokhttp3/w;
    .locals 0

    iget-object p0, p0, Lokhttp3/a0$a$a;->b:Lokhttp3/w;

    return-object p0
.end method

.method public e(Lt9/e;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/a0$a$a;->d:[B

    iget v1, p0, Lokhttp3/a0$a$a;->e:I

    iget p0, p0, Lokhttp3/a0$a$a;->c:I

    invoke-interface {p1, v0, v1, p0}, Lt9/e;->j([BII)Lt9/e;

    return-void
.end method
