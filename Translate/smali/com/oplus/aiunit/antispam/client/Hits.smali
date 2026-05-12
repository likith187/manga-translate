.class public final Lcom/oplus/aiunit/antispam/client/Hits;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final label:Ljava/lang/Integer;

.field private final match:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    iput-object p2, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/aiunit/antispam/client/Hits;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/oplus/aiunit/antispam/client/Hits;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oplus/aiunit/antispam/client/Hits;->copy(Ljava/util/List;Ljava/lang/Integer;)Lcom/oplus/aiunit/antispam/client/Hits;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/Integer;)Lcom/oplus/aiunit/antispam/client/Hits;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/oplus/aiunit/antispam/client/Hits;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/aiunit/antispam/client/Hits;

    invoke-direct {p0, p1, p2}, Lcom/oplus/aiunit/antispam/client/Hits;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/oplus/aiunit/antispam/client/Hits;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/oplus/aiunit/antispam/client/Hits;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    iget-object v3, p1, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLabel()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMatch()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits(match="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/Hits;->match:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/antispam/client/Hits;->label:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
