.class final synthetic Lf3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$b;


# instance fields
.field private final a:Lf3/b0;

.field private final b:Ly2/m;

.field private final c:Ly2/h;


# direct methods
.method private constructor <init>(Lf3/b0;Ly2/m;Ly2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/w;->a:Lf3/b0;

    iput-object p2, p0, Lf3/w;->b:Ly2/m;

    iput-object p3, p0, Lf3/w;->c:Ly2/h;

    return-void
.end method

.method public static a(Lf3/b0;Ly2/m;Ly2/h;)Lf3/b0$b;
    .locals 1

    new-instance v0, Lf3/w;

    invoke-direct {v0, p0, p1, p2}, Lf3/w;-><init>(Lf3/b0;Ly2/m;Ly2/h;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf3/w;->a:Lf3/b0;

    iget-object v1, p0, Lf3/w;->b:Ly2/m;

    iget-object p0, p0, Lf3/w;->c:Ly2/h;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p0, p1}, Lf3/b0;->J0(Lf3/b0;Ly2/m;Ly2/h;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
