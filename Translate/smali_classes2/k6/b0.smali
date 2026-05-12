.class public Lk6/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/n0;


# static fields
.field public static final INSTANCE:Lk6/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk6/b0;

    invoke-direct {v0}, Lk6/b0;-><init>()V

    sput-object v0, Lk6/b0;->INSTANCE:Lk6/b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/oplus/anim/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk6/b0;->b(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/c;->b0()Lcom/oplus/anim/parser/moshi/c$b;

    move-result-object p0

    sget-object v0, Lcom/oplus/anim/parser/moshi/c$b;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Lk6/t;->e(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/oplus/anim/parser/moshi/c$b;->BEGIN_OBJECT:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne p0, v0, :cond_1

    invoke-static {p1, p2}, Lk6/t;->e(Lcom/oplus/anim/parser/moshi/c;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/oplus/anim/parser/moshi/c$b;->NUMBER:Lcom/oplus/anim/parser/moshi/c$b;

    if-ne p0, v0, :cond_3

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/c;->G()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/c;->G()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/c;->B()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert json to point. Next token is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
