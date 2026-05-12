.class Lt5/b$b;
.super Landroidx/room/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/b;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lt5/b;


# direct methods
.method constructor <init>(Lt5/b;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Lt5/b$b;->d:Lt5/b;

    invoke-direct {p0, p2}, Landroidx/room/n;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE from a_e WHERE a_e.uid = (?)AND a_e.capability_name = (?)AND a_e.auth_code = (?)"

    return-object p0
.end method
