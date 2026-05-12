.class public final Ls4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4/d$b;
    }
.end annotation


# static fields
.field private static final e:Lq4/d;

.field private static final f:Lq4/f;

.field private static final g:Lq4/f;

.field private static final h:Ls4/d$b;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private c:Lq4/d;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ls4/a;->b()Lq4/d;

    move-result-object v0

    sput-object v0, Ls4/d;->e:Lq4/d;

    invoke-static {}, Ls4/b;->b()Lq4/f;

    move-result-object v0

    sput-object v0, Ls4/d;->f:Lq4/f;

    invoke-static {}, Ls4/c;->b()Lq4/f;

    move-result-object v0

    sput-object v0, Ls4/d;->g:Lq4/f;

    new-instance v0, Ls4/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls4/d$b;-><init>(Ls4/d$a;)V

    sput-object v0, Ls4/d;->h:Ls4/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/d;->b:Ljava/util/Map;

    sget-object v0, Ls4/d;->e:Lq4/d;

    iput-object v0, p0, Ls4/d;->c:Lq4/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls4/d;->d:Z

    const-class v0, Ljava/lang/String;

    sget-object v1, Ls4/d;->f:Lq4/f;

    invoke-virtual {p0, v0, v1}, Ls4/d;->m(Ljava/lang/Class;Lq4/f;)Ls4/d;

    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Ls4/d;->g:Lq4/f;

    invoke-virtual {p0, v0, v1}, Ls4/d;->m(Ljava/lang/Class;Lq4/f;)Ls4/d;

    const-class v0, Ljava/util/Date;

    sget-object v1, Ls4/d;->h:Ls4/d$b;

    invoke-virtual {p0, v0, v1}, Ls4/d;->m(Ljava/lang/Class;Lq4/f;)Ls4/d;

    return-void
.end method

.method static synthetic b(Ls4/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ls4/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Ls4/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ls4/d;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Ls4/d;)Lq4/d;
    .locals 0

    iget-object p0, p0, Ls4/d;->c:Lq4/d;

    return-object p0
.end method

.method static synthetic e(Ls4/d;)Z
    .locals 0

    iget-boolean p0, p0, Ls4/d;->d:Z

    return p0
.end method

.method static synthetic i(Ljava/lang/Object;Lq4/e;)V
    .locals 2

    new-instance p1, Lq4/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lq4/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic j(Ljava/lang/String;Lq4/g;)V
    .locals 0

    invoke-interface {p1, p0}, Lq4/g;->b(Ljava/lang/String;)Lq4/g;

    return-void
.end method

.method static synthetic k(Ljava/lang/Boolean;Lq4/g;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lq4/g;->c(Z)Lq4/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lq4/d;)Lr4/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ls4/d;->l(Ljava/lang/Class;Lq4/d;)Ls4/d;

    move-result-object p0

    return-object p0
.end method

.method public f()Lq4/a;
    .locals 1

    new-instance v0, Ls4/d$a;

    invoke-direct {v0, p0}, Ls4/d$a;-><init>(Ls4/d;)V

    return-object v0
.end method

.method public g(Lr4/a;)Ls4/d;
    .locals 0

    invoke-interface {p1, p0}, Lr4/a;->a(Lr4/b;)V

    return-object p0
.end method

.method public h(Z)Ls4/d;
    .locals 0

    iput-boolean p1, p0, Ls4/d;->d:Z

    return-object p0
.end method

.method public l(Ljava/lang/Class;Lq4/d;)Ls4/d;
    .locals 1

    iget-object v0, p0, Ls4/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ls4/d;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public m(Ljava/lang/Class;Lq4/f;)Ls4/d;
    .locals 1

    iget-object v0, p0, Ls4/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ls4/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
