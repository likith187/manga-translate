.class public abstract Le7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "content://downloads/oplusdownloads_listen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le7/c;->a:Landroid/net/Uri;

    const-string v0, "content://downloads/oppodownloads_listen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le7/c;->b:Landroid/net/Uri;

    const-string v0, "uuid"

    const-string v1, "statistics_id"

    const-string v2, "errorMsg"

    const-string v3, "extra"

    const-string v4, "\'placeholder\' AS status_detailed"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le7/c;->c:[Ljava/lang/String;

    return-void
.end method
