.class public Landroidx/emoji2/text/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/ThreadLocal;


# instance fields
.field private final a:I

.field private final b:Landroidx/emoji2/text/m;

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/o;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/m;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/o;->c:I

    iput-object p1, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/m;

    iput p2, p0, Landroidx/emoji2/text/o;->a:I

    return-void
.end method

.method private g()Lg0/a;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/o;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a;

    if-nez v1, :cond_0

    new-instance v1, Lg0/a;

    invoke-direct {v1}, Lg0/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/m;

    invoke-virtual {v0}, Landroidx/emoji2/text/m;->d()Lg0/b;

    move-result-object v0

    iget p0, p0, Landroidx/emoji2/text/o;->a:I

    invoke-virtual {v0, v1, p0}, Lg0/b;->j(Lg0/a;I)Lg0/a;

    return-object v1
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 9

    iget-object v0, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/m;

    invoke-virtual {v0}, Landroidx/emoji2/text/m;->g()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Landroidx/emoji2/text/o;->a:I

    mul-int/lit8 v4, v0, 0x2

    iget-object p0, p0, Landroidx/emoji2/text/o;->b:Landroidx/emoji2/text/m;

    invoke-virtual {p0}, Landroidx/emoji2/text/m;->c()[C

    move-result-object v3

    const/4 v5, 0x2

    move-object v2, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public b(I)I
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lg0/a;->h(I)I

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0}, Lg0/a;->i()I

    move-result p0

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/o;->c:I

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public e()I
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0}, Lg0/a;->k()S

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0}, Lg0/a;->l()I

    move-result p0

    return p0
.end method

.method public h()S
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0}, Lg0/a;->m()S

    move-result p0

    return p0
.end method

.method public i()I
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0}, Lg0/a;->n()S

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 0

    invoke-direct {p0}, Landroidx/emoji2/text/o;->g()Lg0/a;

    move-result-object p0

    invoke-virtual {p0}, Lg0/a;->j()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/o;->c:I

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/emoji2/text/o;->d()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    iput p1, p0, Landroidx/emoji2/text/o;->c:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/emoji2/text/o;->c:I

    :goto_0
    return-void
.end method

.method public m(Z)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/o;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Landroidx/emoji2/text/o;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/o;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codepoints:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/o;->c()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/emoji2/text/o;->b(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
