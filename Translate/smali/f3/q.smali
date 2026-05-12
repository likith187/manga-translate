.class final synthetic Lf3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$d;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/q;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Lf3/b0$d;
    .locals 1

    new-instance v0, Lf3/q;

    invoke-direct {v0, p0}, Lf3/q;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf3/q;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0}, Lf3/b0;->a0(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
