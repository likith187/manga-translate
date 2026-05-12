.class public final synthetic Lr7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/g;


# instance fields
.field public final synthetic a:Lr7/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lr7/f;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/e;->a:Lr7/f;

    iput-object p2, p0, Lr7/e;->b:Ljava/lang/String;

    iput-wide p3, p0, Lr7/e;->c:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr7/e;->a:Lr7/f;

    iget-object v1, p0, Lr7/e;->b:Ljava/lang/String;

    iget-wide v2, p0, Lr7/e;->c:J

    invoke-static {v0, v1, v2, v3}, Lr7/f;->a(Lr7/f;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
