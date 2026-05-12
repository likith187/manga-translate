.class public Lcom/ai/slp/library/base/exception/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ai/slp/library/base/exception/d;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ai/slp/library/base/exception/c;->a:I

    .line 3
    iput-object p2, p0, Lcom/ai/slp/library/base/exception/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ai/slp/library/base/exception/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/ai/slp/library/base/exception/d;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ai/slp/library/base/exception/c;->a:I

    .line 6
    iput-object p3, p0, Lcom/ai/slp/library/base/exception/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/ai/slp/library/base/exception/c;->a:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ai/slp/library/base/exception/c;->b:Ljava/lang/String;

    return-object p0
.end method
