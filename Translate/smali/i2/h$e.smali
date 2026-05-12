.class Li2/h$e;
.super Landroidx/room/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li2/h;-><init>(Landroidx/room/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Li2/h;


# direct methods
.method constructor <init>(Li2/h;Landroidx/room/h;)V
    .locals 0

    iput-object p1, p0, Li2/h$e;->d:Li2/h;

    invoke-direct {p0, p2}, Landroidx/room/n;-><init>(Landroidx/room/h;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM simultaneousSentence WHERE noteId = ?"

    return-object p0
.end method
