.class public final Lcom/coloros/translate/screen/translate/business/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lcom/coloros/translate/screen/translate/business/l;

.field private final c:Landroid/graphics/Rect;

.field private final d:Ljava/lang/Object;

.field private e:Lw8/a;


# direct methods
.method public constructor <init>(ILcom/coloros/translate/screen/translate/business/l;Landroid/graphics/Rect;Ljava/lang/Object;Lw8/a;)V
    .locals 1

    const-string v0, "translateType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/translate/screen/translate/business/m;->a:I

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/m;->b:Lcom/coloros/translate/screen/translate/business/l;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/business/m;->c:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/coloros/translate/screen/translate/business/m;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/coloros/translate/screen/translate/business/m;->e:Lw8/a;

    return-void
.end method


# virtual methods
.method public final a()Lw8/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/m;->e:Lw8/a;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/m;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/m;->c:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/translate/business/m;->a:I

    return p0
.end method

.method public final e()Z
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/m;->b:Lcom/coloros/translate/screen/translate/business/l;

    sget-object v0, Lcom/coloros/translate/screen/translate/business/l;->FULL:Lcom/coloros/translate/screen/translate/business/l;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/coloros/translate/screen/translate/business/m;->a:I

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/m;->b:Lcom/coloros/translate/screen/translate/business/l;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/m;->c:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewRequest [requestIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", translateType "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rect "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
