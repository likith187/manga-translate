.class public Lt2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/b$b;,
        Lt2/b$a;
    }
.end annotation


# instance fields
.field private a:Lt2/b$a;

.field private b:I

.field private c:Lt2/c;

.field private d:Lt2/b$b;


# direct methods
.method public constructor <init>(Lt2/b$a;Lt2/c;ILt2/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/b;->a:Lt2/b$a;

    iput-object p2, p0, Lt2/b;->c:Lt2/c;

    iput p3, p0, Lt2/b;->b:I

    iput-object p4, p0, Lt2/b;->d:Lt2/b$b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lt2/b;->b:I

    return p0
.end method

.method public b()Lt2/c;
    .locals 0

    iget-object p0, p0, Lt2/b;->c:Lt2/c;

    return-object p0
.end method

.method public c()Lt2/b$a;
    .locals 0

    iget-object p0, p0, Lt2/b;->a:Lt2/b$a;

    return-object p0
.end method

.method public d()Lt2/b$b;
    .locals 0

    iget-object p0, p0, Lt2/b;->d:Lt2/b$b;

    return-object p0
.end method

.method e(Lt2/c;)V
    .locals 0

    iput-object p1, p0, Lt2/b;->c:Lt2/c;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lt2/b;

    iget v2, p0, Lt2/b;->b:I

    iget v3, p1, Lt2/b;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lt2/b;->a:Lt2/b$a;

    iget-object v3, p1, Lt2/b;->a:Lt2/b$a;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lt2/b;->c:Lt2/c;

    iget-object p1, p1, Lt2/b;->c:Lt2/c;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method f(Lt2/b$a;)V
    .locals 0

    iput-object p1, p0, Lt2/b;->a:Lt2/b$a;

    return-void
.end method

.method g(Lt2/b$b;)V
    .locals 0

    iput-object p1, p0, Lt2/b;->d:Lt2/b$b;

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lt2/b;->a:Lt2/b$a;

    iget v1, p0, Lt2/b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lt2/b;->c:Lt2/c;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIConfig{mStatus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt2/b;->a:Lt2/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lt2/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt2/b;->c:Lt2/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWindowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt2/b;->d:Lt2/b$b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
