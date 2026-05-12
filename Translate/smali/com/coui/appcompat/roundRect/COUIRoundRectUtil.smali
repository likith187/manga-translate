.class public Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/roundRect/COUIRoundRectUtil$SInstanceHolder;
    }
.end annotation


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/roundRect/COUIRoundRectUtil$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil$SInstanceHolder;->sInstance:Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    return-object v0
.end method


# virtual methods
.method public getPath(FFFFF)Landroid/graphics/Path;
    .locals 1

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public getPath(FFFFFZZZZ)Landroid/graphics/Path;
    .locals 7

    move-object v0, p0

    .line 4
    iget-object v0, v0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p8

    move/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->mPath:Landroid/graphics/Path;

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method
