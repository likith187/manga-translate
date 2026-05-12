.class final synthetic Lf3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/b0$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/y;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lf3/b0$b;
    .locals 1

    new-instance v0, Lf3/y;

    invoke-direct {v0, p0}, Lf3/y;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf3/y;->a:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, p1}, Lf3/b0;->L0(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
