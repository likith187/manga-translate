.class public final synthetic Ls5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/util/Calendar;

.field public final synthetic h:[B

.field public final synthetic i:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls5/b;->a:Ljava/lang/String;

    iput p2, p0, Ls5/b;->b:I

    iput-object p3, p0, Ls5/b;->c:Ljava/lang/String;

    iput-object p4, p0, Ls5/b;->f:Ljava/util/Calendar;

    iput-object p5, p0, Ls5/b;->h:[B

    iput-object p6, p0, Ls5/b;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ls5/b;->a:Ljava/lang/String;

    iget v1, p0, Ls5/b;->b:I

    iget-object v2, p0, Ls5/b;->c:Ljava/lang/String;

    iget-object v3, p0, Ls5/b;->f:Ljava/util/Calendar;

    iget-object v4, p0, Ls5/b;->h:[B

    iget-object v5, p0, Ls5/b;->i:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Ls5/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Calendar;[BLandroid/content/Context;)V

    return-void
.end method
