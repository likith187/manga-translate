.class public final Lcom/coloros/translate/screen/utils/u$a$c;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/utils/u$a;->m()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/utils/u$a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/utils/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/utils/u$a$c;->a:Lcom/coloros/translate/screen/utils/u$a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 p1, 0x5

    int-to-float p1, p1

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/u$a$c;->a:Lcom/coloros/translate/screen/utils/u$a;

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/u$a;->d(Lcom/coloros/translate/screen/utils/u$a;)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
