.class public final Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/seekbar/COUISeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SmoothRoundCornerHelper"
.end annotation


# instance fields
.field private mPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

.field private final mSmoothStyleType:I

.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBar;Landroid/graphics/Path;)V
    .locals 1

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->mPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->mSmoothStyleType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/oplus/graphics/OplusPathAdapter;

    invoke-direct {v0, p2, p1}, Lcom/oplus/graphics/OplusPathAdapter;-><init>(Landroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->mPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    :cond_0
    return-void
.end method


# virtual methods
.method getPathAdapter()Lcom/oplus/graphics/OplusPathAdapter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->mPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    return-object p0
.end method

.method getSmoothStyleType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBar$SmoothRoundCornerHelper;->mSmoothStyleType:I

    return p0
.end method
