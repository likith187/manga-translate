.class public final Lcom/oplus/vfxsdk/common/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Le8/a;

.field private final b:Lcom/oplus/vfxsdk/common/UniformValue;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method public constructor <init>(Le8/a;Lcom/oplus/vfxsdk/common/UniformValue;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1

    const-string v0, "defaultParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniformValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/a$b;->a:Le8/a;

    iput-object p2, p0, Lcom/oplus/vfxsdk/common/a$b;->b:Lcom/oplus/vfxsdk/common/UniformValue;

    iput-object p3, p0, Lcom/oplus/vfxsdk/common/a$b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/vfxsdk/common/a$b;->d:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Le8/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$b;->a:Le8/a;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$b;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final d()Lcom/oplus/vfxsdk/common/UniformValue;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/a$b;->b:Lcom/oplus/vfxsdk/common/UniformValue;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/vfxsdk/common/a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/vfxsdk/common/a$b;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->a:Le8/a;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/a$b;->a:Le8/a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->b:Lcom/oplus/vfxsdk/common/UniformValue;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/a$b;->b:Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/a$b;->c:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->d:Ljava/lang/Object;

    iget-object v3, p1, Lcom/oplus/vfxsdk/common/a$b;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    iget-boolean p1, p1, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a$b;->a:Le8/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->b:Lcom/oplus/vfxsdk/common/UniformValue;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/common/UniformValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->d:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    :cond_2
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/a$b;->a:Le8/a;

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/a$b;->b:Lcom/oplus/vfxsdk/common/UniformValue;

    iget-object v2, p0, Lcom/oplus/vfxsdk/common/a$b;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/oplus/vfxsdk/common/a$b;->d:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/a$b;->e:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StateAnimParam(defaultParameter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uniformValue="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", srcValue="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", deltaValue="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isDone="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
