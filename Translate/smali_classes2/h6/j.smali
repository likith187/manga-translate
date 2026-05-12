.class public Lh6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lh6/j$a;

.field private final c:Lg6/b;

.field private final d:Lg6/m;

.field private final e:Lg6/b;

.field private final f:Lg6/b;

.field private final g:Lg6/b;

.field private final h:Lg6/b;

.field private final i:Lg6/b;

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh6/j$a;Lg6/b;Lg6/m;Lg6/b;Lg6/b;Lg6/b;Lg6/b;Lg6/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/j;->b:Lh6/j$a;

    iput-object p3, p0, Lh6/j;->c:Lg6/b;

    iput-object p4, p0, Lh6/j;->d:Lg6/m;

    iput-object p5, p0, Lh6/j;->e:Lg6/b;

    iput-object p6, p0, Lh6/j;->f:Lg6/b;

    iput-object p7, p0, Lh6/j;->g:Lg6/b;

    iput-object p8, p0, Lh6/j;->h:Lg6/b;

    iput-object p9, p0, Lh6/j;->i:Lg6/b;

    iput-boolean p10, p0, Lh6/j;->j:Z

    iput-boolean p11, p0, Lh6/j;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    new-instance p2, Lc6/n;

    invoke-direct {p2, p1, p3, p0}, Lc6/n;-><init>(Lcom/oplus/anim/o;Li6/b;Lh6/j;)V

    return-object p2
.end method

.method public b()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/j;->f:Lg6/b;

    return-object p0
.end method

.method public c()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/j;->h:Lg6/b;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh6/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/j;->g:Lg6/b;

    return-object p0
.end method

.method public f()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/j;->i:Lg6/b;

    return-object p0
.end method

.method public g()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/j;->c:Lg6/b;

    return-object p0
.end method

.method public h()Lg6/m;
    .locals 0

    iget-object p0, p0, Lh6/j;->d:Lg6/m;

    return-object p0
.end method

.method public i()Lg6/b;
    .locals 0

    iget-object p0, p0, Lh6/j;->e:Lg6/b;

    return-object p0
.end method

.method public j()Lh6/j$a;
    .locals 0

    iget-object p0, p0, Lh6/j;->b:Lh6/j$a;

    return-object p0
.end method

.method public k()Z
    .locals 0

    iget-boolean p0, p0, Lh6/j;->j:Z

    return p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lh6/j;->k:Z

    return p0
.end method
