.class Lo4/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lt4/b;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lt4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/b0$a;->a:Ljava/util/Set;

    iput-object p2, p0, Lo4/b0$a;->b:Lt4/b;

    return-void
.end method
