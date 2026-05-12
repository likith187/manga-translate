.class public Lh6/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg6/m;

.field private final c:Lg6/m;

.field private final d:Lg6/b;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg6/m;Lg6/m;Lg6/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/k;->b:Lg6/m;

    iput-object p3, p0, Lh6/k;->c:Lg6/m;

    iput-object p4, p0, Lh6/k;->d:Lg6/b;

    iput-boolean p5, p0, Lh6/k;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/o;

    invoke-direct {p2, p1, p3, p0}, Lc6/o;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/k;)V

    return-object p2
.end method

.method public b()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/k;->d:Lg6/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lg6/m;
    .locals 0

    iget-object p0, p0, Lh6/k;->b:Lg6/m;

    return-object p0
.end method

.method public e()Lg6/m;
    .locals 0

    iget-object p0, p0, Lh6/k;->c:Lg6/m;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lh6/k;->e:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectangleShape{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh6/k;->b:Lg6/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh6/k;->c:Lg6/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
