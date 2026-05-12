.class public Lh6/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Lg6/a;

.field private final e:Lg6/d;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lg6/a;Lg6/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/o;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lh6/o;->a:Z

    iput-object p3, p0, Lh6/o;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lh6/o;->d:Lg6/a;

    iput-object p5, p0, Lh6/o;->e:Lg6/d;

    iput-boolean p6, p0, Lh6/o;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/g;

    invoke-direct {p2, p1, p3, p0}, Lc6/g;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/o;)V

    return-object p2
.end method

.method public b()Lg6/a;
    .locals 0

    iget-object p0, p0, Lh6/o;->d:Lg6/a;

    return-object p0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 0

    iget-object p0, p0, Lh6/o;->b:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lg6/d;
    .locals 0

    iget-object p0, p0, Lh6/o;->e:Lg6/d;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lh6/o;->f:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lh6/o;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
