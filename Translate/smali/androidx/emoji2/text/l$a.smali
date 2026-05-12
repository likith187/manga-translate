.class Landroidx/emoji2/text/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/l$a;->a:Ljava/nio/ByteBuffer;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p0, p0, Landroidx/emoji2/text/l$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/l$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    invoke-static {p0}, Landroidx/emoji2/text/l;->d(S)I

    move-result p0

    return p0
.end method

.method public c()J
    .locals 2

    iget-object p0, p0, Landroidx/emoji2/text/l$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Landroidx/emoji2/text/l;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/l$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public getPosition()J
    .locals 2

    iget-object p0, p0, Landroidx/emoji2/text/l$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method
