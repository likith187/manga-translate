.class final synthetic Lf3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/h0$a;


# static fields
.field private static final a:Lf3/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/d0;

    invoke-direct {v0}, Lf3/d0;-><init>()V

    sput-object v0, Lf3/d0;->a:Lf3/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lf3/h0$a;
    .locals 1

    sget-object v0, Lf3/d0;->a:Lf3/d0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Lf3/h0;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
