.class public Lm5/a;
.super Landroid/database/MatrixCursor;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "col"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm5/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lm5/a;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static c(Landroid/os/Bundle;)Lm5/a;
    .locals 2

    new-instance v0, Lm5/a;

    sget-object v1, Lm5/a;->b:[Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lm5/a;-><init>([Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static i(Landroid/database/Cursor;)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lm5/a;->a:Landroid/os/Bundle;

    return-object p0
.end method
