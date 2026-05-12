.class public final synthetic Lk8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/d;->a:Ljava/util/List;

    iput p2, p0, Lk8/d;->b:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lk8/d;->a:Ljava/util/List;

    iget p0, p0, Lk8/d;->b:I

    invoke-static {v0, p0, p1}, Lk8/e;->b(Ljava/util/List;II)Laa/d;

    move-result-object p0

    return-object p0
.end method
