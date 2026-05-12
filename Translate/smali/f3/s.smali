.class final synthetic Lf3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$d;


# instance fields
.field private final a:Lf3/h0;


# direct methods
.method private constructor <init>(Lf3/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/s;->a:Lf3/h0;

    return-void
.end method

.method public static b(Lf3/h0;)Lf3/b0$d;
    .locals 1

    new-instance v0, Lf3/s;

    invoke-direct {v0, p0}, Lf3/s;-><init>(Lf3/h0;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf3/s;->a:Lf3/h0;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
