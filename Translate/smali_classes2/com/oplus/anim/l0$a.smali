.class Lcom/oplus/anim/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/anim/l0;


# direct methods
.method constructor <init>(Lcom/oplus/anim/l0;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/anim/l0$a;->a:Lcom/oplus/anim/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc0/d;Lc0/d;)I
    .locals 0

    iget-object p0, p1, Lc0/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, p2, Lc0/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p2, p1, p0

    if-lez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc0/d;

    check-cast p2, Lc0/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/l0$a;->a(Lc0/d;Lc0/d;)I

    move-result p0

    return p0
.end method
