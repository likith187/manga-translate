.class public Lh6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/p;->b:Ljava/util/List;

    iput-boolean p3, p0, Lh6/p;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 1

    new-instance v0, Lc6/d;

    invoke-direct {v0, p1, p3, p0, p2}, Lc6/d;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/p;Lcom/oplus/anim/a;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh6/p;->b:Ljava/util/List;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lh6/p;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeGroup{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh6/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' Shapes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh6/p;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
