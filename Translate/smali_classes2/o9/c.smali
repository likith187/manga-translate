.class public final Lo9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/c$a;
    }
.end annotation


# static fields
.field public static final d:Lo9/c$a;

.field public static final e:Lt9/g;

.field public static final f:Lt9/g;

.field public static final g:Lt9/g;

.field public static final h:Lt9/g;

.field public static final i:Lt9/g;

.field public static final j:Lt9/g;


# instance fields
.field public final a:Lt9/g;

.field public final b:Lt9/g;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo9/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo9/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo9/c;->d:Lo9/c$a;

    sget-object v0, Lt9/g;->Companion:Lt9/g$a;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object v1

    sput-object v1, Lo9/c;->e:Lt9/g;

    const-string v1, ":status"

    invoke-virtual {v0, v1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object v1

    sput-object v1, Lo9/c;->f:Lt9/g;

    const-string v1, ":method"

    invoke-virtual {v0, v1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object v1

    sput-object v1, Lo9/c;->g:Lt9/g;

    const-string v1, ":path"

    invoke-virtual {v0, v1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object v1

    sput-object v1, Lo9/c;->h:Lt9/g;

    const-string v1, ":scheme"

    invoke-virtual {v0, v1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object v1

    sput-object v1, Lo9/c;->i:Lt9/g;

    const-string v1, ":authority"

    invoke-virtual {v0, v1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object v0

    sput-object v0, Lo9/c;->j:Lt9/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lt9/g;->Companion:Lt9/g$a;

    invoke-virtual {v0, p1}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object p1

    invoke-virtual {v0, p2}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo9/c;-><init>(Lt9/g;Lt9/g;)V

    return-void
.end method

.method public constructor <init>(Lt9/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lt9/g;->Companion:Lt9/g$a;

    invoke-virtual {v0, p2}, Lt9/g$a;->d(Ljava/lang/String;)Lt9/g;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo9/c;-><init>(Lt9/g;Lt9/g;)V

    return-void
.end method

.method public constructor <init>(Lt9/g;Lt9/g;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo9/c;->a:Lt9/g;

    .line 3
    iput-object p2, p0, Lo9/c;->b:Lt9/g;

    .line 4
    invoke-virtual {p1}, Lt9/g;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lt9/g;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lo9/c;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lt9/g;
    .locals 0

    iget-object p0, p0, Lo9/c;->a:Lt9/g;

    return-object p0
.end method

.method public final b()Lt9/g;
    .locals 0

    iget-object p0, p0, Lo9/c;->b:Lt9/g;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo9/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo9/c;

    iget-object v1, p0, Lo9/c;->a:Lt9/g;

    iget-object v3, p1, Lo9/c;->a:Lt9/g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lo9/c;->b:Lt9/g;

    iget-object p1, p1, Lo9/c;->b:Lt9/g;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lo9/c;->a:Lt9/g;

    invoke-virtual {v0}, Lt9/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lo9/c;->b:Lt9/g;

    invoke-virtual {p0}, Lt9/g;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo9/c;->a:Lt9/g;

    invoke-virtual {v1}, Lt9/g;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo9/c;->b:Lt9/g;

    invoke-virtual {p0}, Lt9/g;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
