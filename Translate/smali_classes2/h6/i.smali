.class public Lh6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lh6/i$a;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh6/i$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/i;->b:Lh6/i$a;

    iput-boolean p3, p0, Lh6/i;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    invoke-virtual {p1}, Lcom/oplus/anim/o;->A()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Animation contains merge paths but they are disabled."

    invoke-static {p0}, Ll6/e;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lc6/l;

    invoke-direct {p1, p0}, Lc6/l;-><init>(Lh6/i;)V

    return-object p1
.end method

.method public b()Lh6/i$a;
    .locals 0

    iget-object p0, p0, Lh6/i;->b:Lh6/i$a;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lh6/i;->c:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MergePaths{mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh6/i;->b:Lh6/i$a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
