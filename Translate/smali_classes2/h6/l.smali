.class public Lh6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg6/b;

.field private final c:Lg6/b;

.field private final d:Lg6/l;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg6/b;Lg6/b;Lg6/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/l;->b:Lg6/b;

    iput-object p3, p0, Lh6/l;->c:Lg6/b;

    iput-object p4, p0, Lh6/l;->d:Lg6/l;

    iput-boolean p5, p0, Lh6/l;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/p;

    invoke-direct {p2, p1, p3, p0}, Lc6/p;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/l;)V

    return-object p2
.end method

.method public b()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/l;->b:Lg6/b;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/l;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/l;->c:Lg6/b;

    return-object p0
.end method

.method public e()Lg6/l;
    .locals 0

    iget-object p0, p0, Lh6/l;->d:Lg6/l;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lh6/l;->e:Z

    return p0
.end method
