.class final synthetic Ld3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ld3/c;

.field private final b:Ly2/m;

.field private final c:Lw2/h;

.field private final f:Ly2/h;


# direct methods
.method private constructor <init>(Ld3/c;Ly2/m;Lw2/h;Ly2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/a;->a:Ld3/c;

    iput-object p2, p0, Ld3/a;->b:Ly2/m;

    iput-object p3, p0, Ld3/a;->c:Lw2/h;

    iput-object p4, p0, Ld3/a;->f:Ly2/h;

    return-void
.end method

.method public static a(Ld3/c;Ly2/m;Lw2/h;Ly2/h;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Ld3/a;

    invoke-direct {v0, p0, p1, p2, p3}, Ld3/a;-><init>(Ld3/c;Ly2/m;Lw2/h;Ly2/h;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld3/a;->a:Ld3/c;

    iget-object v1, p0, Ld3/a;->b:Ly2/m;

    iget-object v2, p0, Ld3/a;->c:Lw2/h;

    iget-object p0, p0, Ld3/a;->f:Ly2/h;

    invoke-static {v0, v1, v2, p0}, Ld3/c;->c(Ld3/c;Ly2/m;Lw2/h;Ly2/h;)V

    return-void
.end method
