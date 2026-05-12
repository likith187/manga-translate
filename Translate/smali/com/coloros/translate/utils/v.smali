.class public final synthetic Lcom/coloros/translate/utils/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic f:F

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/utils/v;->a:Landroid/view/View;

    iput p2, p0, Lcom/coloros/translate/utils/v;->b:F

    iput p3, p0, Lcom/coloros/translate/utils/v;->c:F

    iput p4, p0, Lcom/coloros/translate/utils/v;->f:F

    iput p5, p0, Lcom/coloros/translate/utils/v;->h:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/utils/v;->a:Landroid/view/View;

    iget v1, p0, Lcom/coloros/translate/utils/v;->b:F

    iget v2, p0, Lcom/coloros/translate/utils/v;->c:F

    iget v3, p0, Lcom/coloros/translate/utils/v;->f:F

    iget p0, p0, Lcom/coloros/translate/utils/v;->h:F

    invoke-static {v0, v1, v2, v3, p0}, Lcom/coloros/translate/utils/w;->b(Landroid/view/View;FFFF)V

    return-void
.end method
