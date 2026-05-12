.class final Lx2/b$f;
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
    name = "f"
.end annotation


# static fields
.field static final a:Lx2/b$f;

.field private static final b:Lq4/c;

.field private static final c:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/b$f;

    invoke-direct {v0}, Lx2/b$f;-><init>()V

    sput-object v0, Lx2/b$f;->a:Lx2/b$f;

    const-string v0, "networkType"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$f;->b:Lq4/c;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Lq4/c;->d(Ljava/lang/String;)Lq4/c;

    move-result-object v0

    sput-object v0, Lx2/b$f;->c:Lq4/c;

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

    check-cast p1, Lx2/o;

    check-cast p2, Lq4/e;

    invoke-virtual {p0, p1, p2}, Lx2/b$f;->b(Lx2/o;Lq4/e;)V

    return-void
.end method

.method public b(Lx2/o;Lq4/e;)V
    .locals 1

    sget-object p0, Lx2/b$f;->b:Lq4/c;

    invoke-virtual {p1}, Lx2/o;->c()Lx2/o$c;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lx2/b$f;->c:Lq4/c;

    invoke-virtual {p1}, Lx2/o;->b()Lx2/o$b;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
