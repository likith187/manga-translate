.class Ll5/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/epona/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/heytap/epona/Response;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll5/e$c;->a:Lcom/heytap/epona/Response;

    return-void
.end method

.method synthetic constructor <init>(Ll5/e$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ll5/e$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/heytap/epona/Response;
    .locals 0

    iget-object p0, p0, Ll5/e$c;->a:Lcom/heytap/epona/Response;

    return-object p0
.end method

.method public onReceive(Lcom/heytap/epona/Response;)V
    .locals 0

    iput-object p1, p0, Ll5/e$c;->a:Lcom/heytap/epona/Response;

    return-void
.end method
