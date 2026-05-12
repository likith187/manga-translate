.class Lcom/coui/appcompat/cardview/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/cardview/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/cardview/CardViewBaseImpl;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/cardview/CardViewBaseImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/cardview/CardViewBaseImpl$1;->this$0:Lcom/coui/appcompat/cardview/CardViewBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
