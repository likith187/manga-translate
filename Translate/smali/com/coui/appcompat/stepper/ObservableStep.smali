.class public Lcom/coui/appcompat/stepper/ObservableStep;
.super Ljava/util/Observable;
.source "SourceFile"


# static fields
.field public static final MAX_VALUE:I = 0x270f

.field public static final MIN_VALUE:I = -0x3e7


# instance fields
.field private mMax:I

.field private mMini:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/16 v0, 0x270f

    iput v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMax:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMini:I

    return-void
.end method


# virtual methods
.method public getMaximum()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMax:I

    return p0
.end method

.method public getMinimum()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMini:I

    return p0
.end method

.method public getStep()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mStep:I

    return p0
.end method

.method public setMaximum(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMini:I

    if-lt p1, v0, :cond_2

    const/16 v0, 0x270f

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMax:I

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mStep:I

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->setStep(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maximum cannot be bigger than \'9999\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maximum cannot be smaller than mMini"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinimum(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMax:I

    if-gt p1, v0, :cond_2

    const/16 v0, -0x3e7

    if-lt p1, v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mMini:I

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mStep:I

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/stepper/ObservableStep;->setStep(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minimum cannot be smaller than \'-999\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minimum cannot be bigger than mMini"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStep(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/ObservableStep;->getMinimum()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/coui/appcompat/stepper/ObservableStep;->getMaximum()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mStep:I

    iput p1, p0, Lcom/coui/appcompat/stepper/ObservableStep;->mStep:I

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
