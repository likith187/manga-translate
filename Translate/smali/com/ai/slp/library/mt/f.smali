.class public final Lcom/ai/slp/library/mt/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ai/slp/library/mt/a;

.field private final c:Lcom/ai/slp/library/mt/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ai/slp/library/mt/a;Lcom/ai/slp/library/mt/a;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ai/slp/library/mt/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ai/slp/library/mt/f;->b:Lcom/ai/slp/library/mt/a;

    iput-object p3, p0, Lcom/ai/slp/library/mt/f;->c:Lcom/ai/slp/library/mt/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ai/slp/library/mt/a;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/f;->b:Lcom/ai/slp/library/mt/a;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/ai/slp/library/mt/a;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/mt/f;->c:Lcom/ai/slp/library/mt/a;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/ai/slp/library/mt/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ai/slp/library/mt/f;

    iget-object v0, p0, Lcom/ai/slp/library/mt/f;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/ai/slp/library/mt/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ai/slp/library/mt/f;->b:Lcom/ai/slp/library/mt/a;

    iget-object v1, p1, Lcom/ai/slp/library/mt/f;->b:Lcom/ai/slp/library/mt/a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ai/slp/library/mt/f;->c:Lcom/ai/slp/library/mt/a;

    iget-object p1, p1, Lcom/ai/slp/library/mt/f;->c:Lcom/ai/slp/library/mt/a;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/ai/slp/library/mt/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ai/slp/library/mt/f;->b:Lcom/ai/slp/library/mt/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ai/slp/library/mt/f;->c:Lcom/ai/slp/library/mt/a;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslateRequest(query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ai/slp/library/mt/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ai/slp/library/mt/f;->b:Lcom/ai/slp/library/mt/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ai/slp/library/mt/f;->c:Lcom/ai/slp/library/mt/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
