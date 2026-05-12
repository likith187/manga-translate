.class public final Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/translation/data/SensitiveWordFilter$LabelInfo;
    }
.end annotation


# instance fields
.field private end:Ljava/lang/Integer;

.field private labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/data/SensitiveWordFilter$LabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private start:Ljava/lang/Integer;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnd()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->end:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getLabels()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/data/SensitiveWordFilter$LabelInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->labels:Ljava/util/Map;

    return-object p0
.end method

.method public final getStart()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->start:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->text:Ljava/lang/String;

    return-object p0
.end method

.method public final setEnd(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->end:Ljava/lang/Integer;

    return-void
.end method

.method public final setLabels(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/aiunit/translation/data/SensitiveWordFilter$LabelInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->labels:Ljava/util/Map;

    return-void
.end method

.method public final setStart(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->start:Ljava/lang/Integer;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensitiveWordFilter(text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->start:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->end:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/data/SensitiveWordFilter;->labels:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
