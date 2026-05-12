.class public Lh6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg6/m;

.field private final c:Lg6/f;

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg6/m;Lg6/f;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/b;->b:Lg6/m;

    iput-object p3, p0, Lh6/b;->c:Lg6/f;

    iput-boolean p4, p0, Lh6/b;->d:Z

    iput-boolean p5, p0, Lh6/b;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/f;

    invoke-direct {p2, p1, p3, p0}, Lc6/f;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/b;)V

    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lg6/m;
    .locals 0

    iget-object p0, p0, Lh6/b;->b:Lg6/m;

    return-object p0
.end method

.method public d()Lg6/f;
    .locals 0

    iget-object p0, p0, Lh6/b;->c:Lg6/f;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lh6/b;->e:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lh6/b;->d:Z

    return p0
.end method
