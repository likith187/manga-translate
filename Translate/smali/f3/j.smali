.class final synthetic Lf3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$b;


# instance fields
.field private final a:J

.field private final b:Ly2/m;


# direct methods
.method private constructor <init>(JLy2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf3/j;->a:J

    iput-object p3, p0, Lf3/j;->b:Ly2/m;

    return-void
.end method

.method public static a(JLy2/m;)Lf3/b0$b;
    .locals 1

    new-instance v0, Lf3/j;

    invoke-direct {v0, p0, p1, p2}, Lf3/j;-><init>(JLy2/m;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lf3/j;->a:J

    iget-object p0, p0, Lf3/j;->b:Ly2/m;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p0, p1}, Lf3/b0;->M0(JLy2/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
