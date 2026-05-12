.class Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/progressbar/COUICircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressPoint"
.end annotation


# instance fields
.field mCurrentAlpha:F

.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUICircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUICircleProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;->this$0:Lcom/coui/appcompat/progressbar/COUICircleProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentAlpha()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;->mCurrentAlpha:F

    return p0
.end method

.method public setCurrentAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircleProgressBar$ProgressPoint;->mCurrentAlpha:F

    return-void
.end method
