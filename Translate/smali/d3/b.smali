.class final synthetic Ld3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b$a;


# instance fields
.field private final a:Ld3/c;

.field private final b:Ly2/m;

.field private final c:Ly2/h;


# direct methods
.method private constructor <init>(Ld3/c;Ly2/m;Ly2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/b;->a:Ld3/c;

    iput-object p2, p0, Ld3/b;->b:Ly2/m;

    iput-object p3, p0, Ld3/b;->c:Ly2/h;

    return-void
.end method

.method public static a(Ld3/c;Ly2/m;Ly2/h;)Lg3/b$a;
    .locals 1

    new-instance v0, Ld3/b;

    invoke-direct {v0, p0, p1, p2}, Ld3/b;-><init>(Ld3/c;Ly2/m;Ly2/h;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ld3/b;->a:Ld3/c;

    iget-object v1, p0, Ld3/b;->b:Ly2/m;

    iget-object p0, p0, Ld3/b;->c:Ly2/h;

    invoke-static {v0, v1, p0}, Ld3/c;->b(Ld3/c;Ly2/m;Ly2/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
