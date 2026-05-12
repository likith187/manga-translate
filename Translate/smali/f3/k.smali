.class final synthetic Lf3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$b;


# instance fields
.field private final a:Lf3/b0;

.field private final b:Ly2/m;


# direct methods
.method private constructor <init>(Lf3/b0;Ly2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/k;->a:Lf3/b0;

    iput-object p2, p0, Lf3/k;->b:Ly2/m;

    return-void
.end method

.method public static a(Lf3/b0;Ly2/m;)Lf3/b0$b;
    .locals 1

    new-instance v0, Lf3/k;

    invoke-direct {v0, p0, p1}, Lf3/k;-><init>(Lf3/b0;Ly2/m;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf3/k;->a:Lf3/b0;

    iget-object p0, p0, Lf3/k;->b:Ly2/m;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p0, p1}, Lf3/b0;->G0(Lf3/b0;Ly2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
