.class public final synthetic Lp7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/g;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7/f;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp7/f;->a:Ljava/lang/Exception;

    invoke-static {p0}, Lp7/l;->j(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
