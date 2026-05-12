.class public Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPointMode:I

.field private mPointNumber:I

.field private mPointText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointMode:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointNumber:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    return-void
.end method

.method public getPointMode()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointMode:I

    return p0
.end method

.method public getPointNumber()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointNumber:I

    return p0
.end method

.method public getPointText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointText:Ljava/lang/String;

    return-object p0
.end method

.method public setPointMode(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointMode:I

    return-void
.end method

.method public setPointNumber(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointNumber:I

    return-void
.end method

.method public setPointText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->mPointText:Ljava/lang/String;

    return-void
.end method
