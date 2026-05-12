.class public final Lcom/coloros/translate/screen/translate/business/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/coloros/translate/screen/translate/business/m;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:I

.field private final e:F

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IF)V
    .locals 1

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originBitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/g;->a:Lcom/coloros/translate/screen/translate/business/m;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/business/g;->c:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/coloros/translate/screen/translate/business/g;->d:I

    iput p5, p0, Lcom/coloros/translate/screen/translate/business/g;->e:F

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "PresenterRequest"

    const-string v1, "copyAndRecycle:isRecycled()"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/g;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/translate/business/g;->e:F

    return p0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/g;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final e()Lcom/coloros/translate/screen/translate/business/m;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/g;->a:Lcom/coloros/translate/screen/translate/business/m;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "PresenterRequest"

    const-string v1, "recycle:isRecycled()"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/g;->a:Lcom/coloros/translate/screen/translate/business/m;

    iget v1, p0, Lcom/coloros/translate/screen/translate/business/g;->d:I

    iget p0, p0, Lcom/coloros/translate/screen/translate/business/g;->e:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PresenterRequest ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", retry "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scale "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
