.class public final synthetic Lcom/coloros/translate/screen/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/PaintCustomView;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/PaintCustomView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/i;->a:Lcom/coloros/translate/screen/widget/PaintCustomView;

    iput p2, p0, Lcom/coloros/translate/screen/widget/i;->b:F

    iput p3, p0, Lcom/coloros/translate/screen/widget/i;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/i;->a:Lcom/coloros/translate/screen/widget/PaintCustomView;

    iget v1, p0, Lcom/coloros/translate/screen/widget/i;->b:F

    iget p0, p0, Lcom/coloros/translate/screen/widget/i;->c:F

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->g(Lcom/coloros/translate/screen/widget/PaintCustomView;FF)V

    return-void
.end method
