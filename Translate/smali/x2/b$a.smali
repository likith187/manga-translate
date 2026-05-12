.class final Lx2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:Lx2/b$a;

.field private static final b:Lq4/c;

.field private static final c:Lq4/c;

.field private static final d:Lq4/c;

.field private static final e:Lq4/c;

.field private static final f:Lq4/c;

.field private static final g:Lq4/c;

.field private static final h:Lq4/c;

.field private static final i:Lq4/c;

.field private static final j:Lq4/c;

.field private static final k:Lq4/c;

.field private static final l:Lq4/c;

.field private static final m:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/b$a;

    invoke-direct {v0}, Lx2/b$a;-><init>()V

    sput-object v0, Lx2/b$a;->a:Lx2/b$a;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->b:Lq4/c;

    const-string v0, "model"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->c:Lq4/c;

    const-string v0, "hardware"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->d:Lq4/c;

    const-string v0, "device"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->e:Lq4/c;

    const-string v0, "product"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->f:Lq4/c;

    const-string v0, "osBuild"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->g:Lq4/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->h:Lq4/c;

    const-string v0, "fingerprint"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->i:Lq4/c;

    const-string v0, "locale"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->j:Lq4/c;

    const-string v0, "country"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->k:Lq4/c;

    const-string v0, "mccMnc"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->l:Lq4/c;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$a;->m:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lx2/a;

    check-cast p2, Lq4/e;

    invoke-virtual {p0, p1, p2}, Lx2/b$a;->b(Lx2/a;Lq4/e;)V

    return-void
.end method

.method public b(Lx2/a;Lq4/e;)V
    .locals 1

    sget-object p0, Lx2/b$a;->b:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->m()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->c:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->d:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->e:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->f:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->g:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->h:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->i:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->j:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->k:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->l:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$a;->m:Lq4/c;

    invoke-virtual {p1}, Lx2/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
